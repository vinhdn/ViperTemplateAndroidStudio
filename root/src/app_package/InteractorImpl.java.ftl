package ${packageName}.modules.${slashedPackageName(classNameLower)}.interactor;

${userCreate}

import ${packageName}.components.base.interactor.BaseInteractorImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.api.Api${className};

import javax.inject.Inject;

/**
* Interactor: contains the business logic as specified by a use case.
*
**/
public class ${interactorClass}Impl extends BaseInteractorImpl implements ${interactorClass} {

    @Inject
    Api${className} api${className};

    public ${interactorClass}Impl(Api${className} api${className}) {
        this.api${className} = api${className};
    }
}
