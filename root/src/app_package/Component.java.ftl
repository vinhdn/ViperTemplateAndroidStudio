package ${packageName}.application.di.component;

import ${packageName}.application.di.ViewScope;
import ${packageName}.application.di.module.${className}Module;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment.${className}Fragment;
import ${packageName}.manager.network.api.Api${className};

import dagger.Component;

//
// BaseAndroid - ${className}Component
//
${userCreate}

@ViewScope
@Component(modules = ${className}Module.class, dependencies = ApplicationComponent.class)
public interface ${className}Component {
    void inject(${className}Fragment fragment);
    Api${className} getApi${className}();
}
