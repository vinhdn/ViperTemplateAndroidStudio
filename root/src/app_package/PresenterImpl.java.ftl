package ${packageName}.modules.${slashedPackageName(classNameLower)}.presenter;

${userCreate}

import android.os.Bundle;

import ${packageName}.components.base.presenter.BasePresenterImpl;
import ${packageName}.modules.${slashedPackageName(classNameLower)}.interactor.${interactorClass};
import ${packageName}.modules.${slashedPackageName(classNameLower)}.router.${routerClass};
import ${packageName}.modules.${slashedPackageName(classNameLower)}.view.${viewClass};
/**
* Presenter: contains view logic for preparing content for display (as received from the Interactor) and for reacting to user inputs (by requesting new data from the Interactor).
**/

public class ${presenterClass}Impl extends BasePresenterImpl implements ${presenterClass} {

    private ${interactorClass} interactor;
    private ${viewClass} view;
    public ${routerClass} router;

    public ${presenterClass}Impl(${viewClass} view, ${interactorClass} interactor, ${routerClass} router) {
        this.interactor = interactor;
        this.view = view;
        this.router = router;
    }

    @Override
    public void onLowMemory() {

    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {

    }

    @Override
    public void onResume() {

    }

    @Override
    public void onPause() {

    }

    @Override
    public void onSaveInstanceState(Bundle outState) {

    }

    @Override
    public void onRefresh() {

    }

    @Override
    public void onDestroy() {

    }
}
