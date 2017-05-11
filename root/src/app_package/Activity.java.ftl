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
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment.${className}Fragment;

public class ${className}Activity extends BaseActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_${classNameLower});

        ButterKnife.bind(this);

        //Replace Fragment in first layout
        if(savedInstanceState == null)
            changeFragment(${className}Fragment.getInstance(), false);
    }

    @Override
    public int getCurrentFrameLayoutId() {
        return R.id.framelayout;
    }
}
