package ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment;

${userCreate}

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.application.App;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.di.component.Dagger${className}Component;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.di.module.${className}Module;
import ${packageName}.components.base.view.fragment.BaseFragment;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.presenter.${className}Presenter;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.presenter.${className}PresenterImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.${className}View;

import javax.inject.Inject;

import butterknife.BindView;
import butterknife.ButterKnife;

/**
* Use the {@link ${className}Fragment#getInstance} factory method to
* create an instance of this fragment.
**/

public class ${className}Fragment extends BaseFragment implements ${className}View {

    @Inject
    ${className}Presenter presenter;

    public static ${className}Fragment getInstance(){
        ${className}Fragment fragment = new ${className}Fragment();
        return fragment;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_${classNameLower}, container, false);
        ButterKnife.bind(this, view);
        return view;
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        Dagger${className}Component.builder()
                .applicationComponent(App.get().getComponent())
                .${slashedPackageName(classNameLower)}Module(new ${className}Module(this))
                .build().inject(this);
    }

    @Override
    public int getCurrentFrameLayoutId() {
        return R.id.framelayout;
    }

}
