package ${packageName}.modules.${slashedPackageName(classNameLower)}.view.activity;

${userCreate}

import android.os.Bundle;
import butterknife.ButterKnife;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.application.App;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.di.component.Dagger${className}Component;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.di.module.${className}Module;
import ${packageName}.components.base.view.activity.BaseActivity;
import ${packageName}.components.base.presenter.BasePresenter;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment.${className}Fragment;

import android.support.v4.app.FragmentManager;

public class ${className}Activity extends BaseActivity {

    ${className}Fragment fragment;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classNameLower});

        ButterKnife.bind(this);

        //Replace Fragment in first layout
        if(savedInstanceState == null){
            fragment = ${className}Fragment.getInstance();
            changeFragment(fragment, false);
        }
    }

    @Override
    public int getCurrentFrameLayoutId() {
        return R.id.framelayout;
    }

    @Override
    public BasePresenter getPresenter() {
        return null;
    }

    @Override
    public FragmentManager getCurrentFragmentManager(){
        if(fragment != null && fragment.isAdded()){
             return fragment.getChildFragmentManager();
        }
         return getSupportFragmentManager();
    }
}
