package ${packageName}.modules.${slashedPackageName(classNameLower)}.router;

${userCreate}

import ${packageName}.components.base.router.BaseRouterImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.fragment.${fragmentClass};

/**
* Routing: contains navigation logic for describing which screens are shown in which order.
**/
public class ${routerClass}Impl extends BaseRouterImpl implements ${routerClass}{

    public ${routerClass}Impl(${fragmentClass} fragment){
        this.mFragment = fragment;
    }
}
