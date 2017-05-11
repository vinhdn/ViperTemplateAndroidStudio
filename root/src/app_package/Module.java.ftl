package ${packageName}.modules.${slashedPackageName(classNameLower)}.di.module;

${userCreate}

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.interactor.${className}Interactor;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.interactor.${className}InteractorImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.presenter.${className}Presenter;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.presenter.${className}PresenterImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.router.${className}Router;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.router.${className}RouterImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment.${className}Fragment;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.api.Api${className};
import ${packageName}.manager.network.convertresponse.JWTConverterFactory;

import dagger.Module;
import dagger.Provides;
import retrofit2.Retrofit;

/**
* Class will provide dependencies for ${className} module
**/
@Module
public class ${className}Module {

    ${className}Fragment view;

    public ${className}Module(${className}Fragment view) {
        this.view = view;
    }

    /**
    * Method return Router of module
    **/
    @Provides
    public ${className}Router provideRouter(){
        return new ${className}RouterImpl(view);
    }

    /**
    * Method return Interactor of module
    **/
    @Provides
    public ${className}Interactor provideInteractor(Api${className} service){
        return new ${className}InteractorImpl(service);
    }

    /**
    * Method return Presenter of module
    **/
    @Provides
    public ${className}Presenter providePresenter(${className}Interactor interactor, ${className}Router router){
        return new ${className}PresenterImpl(view, interactor, router);
    }

    /**
    * Method return REST API of module
    **/
    @Provides
    public Api${className} provideApi${className}(Retrofit.Builder builder) {
        Gson gson = new GsonBuilder()
                .excludeFieldsWithoutExposeAnnotation().create();
        Retrofit retrofit = builder.addConverterFactory(JWTConverterFactory.create(gson)).build();
        return retrofit.create(Api${className}.class);
    }
}
