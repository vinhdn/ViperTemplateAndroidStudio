<?xml version="1.0"?>
<recipe>
	<instantiate from="src/app_package/Module.java.ftl"
									 to="${escapeXmlAttribute(srcOut)}/application/di/module/${moduleClass}.java" />
									 
	<instantiate from="src/app_package/ApiService.java.ftl"
								to="${escapeXmlAttribute(srcOut)}/manager/network/api/Api${className}.java" />

	<instantiate from="src/app_package/Component.java.ftl"
									to="${escapeXmlAttribute(srcOut)}/application/di/component/${componentClass}.java" />

	<instantiate from="src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/view/${viewClass}.java" />
									 <instantiate from="src/app_package/Fragment.java.ftl"
								                    to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/view/fragment/${fragmentClass}.java" />

	<instantiate from="src/app_package/Interactor.java.ftl"
								   to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/interactor/${interactorClass}.java" />
									 <instantiate from="src/app_package/InteractorImpl.java.ftl"
								 								   to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/interactor/${interactorClass}Impl.java" />

	<instantiate from="src/app_package/Presenter.java.ftl"
									to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/presenter/${presenterClass}.java" />
									<instantiate from="src/app_package/PresenterImpl.java.ftl"
																	to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/presenter/${presenterClass}Impl.java" />

	<instantiate from="src/app_package/Router.java.ftl"
									to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/router/${routerClass}.java" />
									<instantiate from="src/app_package/RouterImpl.java.ftl"
																	to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/router/${routerClass}Impl.java" />

	<#if includeLayout>
		<instantiate from="res/layout/fragment_blank.xml.ftl"
						to="${escapeXmlAttribute(resOut)}/layout/fragment_${classNameLower}.xml" />
	</#if>
  <#if includeActivity>
											 <instantiate from="src/app_package/Activity.java.ftl"
										                    to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/view/activity/${className}Activity.java" />
									 		<instantiate from="res/layout/fragment_blank.xml.ftl"
									 						to="${escapeXmlAttribute(resOut)}/layout/activity_${classNameLower}.xml" />
											<merge from="AndroidManifest.xml.ftl"
													    to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	</#if>
	<#if includeAdapter>
												<instantiate from="src/app_package/Adapter.java.ftl"
																				 to="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/view/adapter/${className}Adapter.java" />

	</#if>
	<open file="${escapeXmlAttribute(srcOut)}/modules/${slashedPackageName(classNameLower)}/presenter/${presenterClass}.java"/>
</recipe>
