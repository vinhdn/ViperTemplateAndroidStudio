package ${packageName}.modules.${slashedPackageName(classNameLower)}.di.component;

import ${packageName}.components.base.di.ViewScope;
import ${packageName}.components.base.di.component.ApplicationComponent;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.di.module.${className}Module;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment.${className}Fragment;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.api.Api${className};

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
