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
import ${packageName}.modules.tabbar.view.fragment.TabbarFragment;

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
        FragmentManager fm = getSupportFragmentManager();
                if(fm.getFragments() != null){
                    for (Fragment frag :
                            fm.getFragments()) {
                        if(frag != null && frag.isVisible() && frag instanceof TabbarFragment){
                            return ((TabbarFragment) frag).getCurrentFragmentManager();
                        }
                    }
                }
        return getSupportFragmentManager();
    }
}
