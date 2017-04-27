package ${packageName}.modules.${slashedPackageName(classNameLower)}.view.adapter;

${userCreate}

import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>
import ${packageName}.components.model.BaseModel;
import ${packageName}.components.view.adapter.BaseAdapter;
import ${packageName}.components.view.adapter.viewholders.BaseHolder;

import java.util.List;

import io.reactivex.functions.Function;
/**
* Adapter template
* You must replace BaseModel with your Adapter model
**/
public class ${className}Adapter extends BaseAdapter<BaseModel, ${className}Adapter.${className}Holder>{

    public ${className}Adapter(@NonNull List items, @NonNull Function func0) {
        super(items, func0);
    }

    @Override
    public ${className}Holder onCreateViewHolder(ViewGroup viewGroup, int holderType) {
        LayoutInflater inflater = getLayoutInflater(viewGroup);
        //TODO replace layout of your item
        View view = inflater.inflate(R.layout.item_recycler_template, viewGroup, false);
        return new ${className}Holder(view);
    }

    private LayoutInflater getLayoutInflater(ViewGroup parent) {
        return LayoutInflater.from(parent.getContext());
    }

    @Override
    public void onBindViewHolder(${className}Holder ${slashedPackageName(classNameLower)}Holder, int position) {

    }

    class ${className}Holder extends BaseHolder<BaseModel>{

        public ${className}Holder(View itemView) {
            super(itemView);
            //TODO Using butterknife to bind view
        }

        /**
        * Binding data to ViewHolder
        **/
        @Override
        public void bind(BaseModel item) {

        }
    }
}
