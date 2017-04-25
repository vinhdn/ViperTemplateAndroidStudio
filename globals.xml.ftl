<?xml version="1.0"?>
<globals>
  <global id="className" value="${underscoreToCamelCase(moduleName)}"/>
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="classNameLower"
           value="${underscoreToCamelCase(moduleName)?lower_case}" />
   <global id="routerClass"
           value="${underscoreToCamelCase(moduleName)}Router" />
   <global id="viewClass"
           value="${underscoreToCamelCase(moduleName)}View" />
  <global id="fragmentClass"
          value="${underscoreToCamelCase(moduleName)}Fragment" />
   <global id="interactorClass"
           value="${underscoreToCamelCase(moduleName)}Interactor" />
   <global id="presenterClass"
           value="${underscoreToCamelCase(moduleName)}Presenter" />
   <global id="moduleClass"
           value="${underscoreToCamelCase(moduleName)}Module" />
  <global id="componentClass"
          value="${underscoreToCamelCase(moduleName)}Component" />
  <global id="userCreate" value="/**
    * Create by Ominext auto

    * Copyright (c) 2017 Ominext. All rights reserved.
    **/"/>
</globals>
