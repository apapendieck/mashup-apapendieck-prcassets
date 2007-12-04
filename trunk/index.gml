<gm:page title="Picayune Assets" authenticate="false">

  <!--
    The mashup application demonstrates taking an external RSS feed from a google spreadsheet with
    and maps it to a Google Map using a "location" field and the "geolocationref" operator.
    @author: apapendieck@gmail.com
  -->
   <div>
      <h3>Pearl River County Assets</h3> 
  </div>
  <gm:tabs target="myContainer"/>
  <gm:container id="myContainer" style="padding:3px;border:1px solid #369;width:900px;">
    
     <gm:section id="sectionAll" title="All Assets">
  <div>
  

      <h3>All Assets</h3> 
  </div>
      <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="listAll" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values"
            pagesize="10" template="myListTemplate">
          <gm:handleEvent event="select" src="mapAll"/>
        </gm:list>
      </td>
      <td valign="top">
        <gm:map id="mapAll" style="border:solid black 1px" control="large"
            maptypes="true" data="${listAll}" geolocationref="gsx:location"
            infotemplate="myMapDetailsTemplate"
            lat="30.53" lng="-89.68" zoom="8">
          <gm:handleEvent event="select" src="listAll"/>
        </gm:map>
      </td>
    </tr>    
  </table>
    </gm:section>           
                
    <gm:section id="sectionSchools" title="Schools">
<div>
    <h3>Schools</h3>
</div>
<table width="100%">
<tr>
<td style="padding-right:10px; width:250px" valign="top">
<gm:list id="listSchools" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=school%3D1" pagesize="10" template="myListTemplate">
<gm:handleEvent event="select" src="mapSchools"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="mapSchools" style="border:solid black 1px" control="large"
maptypes="true" data="${listSchools}" geolocationref="gsx:location"
infotemplate="myMapDetailsTemplate"
lat="30.53" lng="-89.68" zoom="8">
<gm:handleEvent event="select" src="listSchools"/>
</gm:map>
</td>
</tr>
</table>
</gm:section> 




<gm:section id="sectionFire" title="Fire">
<div>
<h3>Fire</h3>
</div>
<table width="100%">
<tr>
<td style="padding-right:10px; width:250px" valign="top">
<gm:list id="listFire" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=firedept%3D1"
pagesize="10" template="myListTemplate">
<gm:handleEvent event="select" src="mapFire"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="mapFire" style="border:solid black 1px" control="large"
maptypes="true" data="${listFire}" geolocationref="gsx:location"
infotemplate="myMapDetailsTemplate"
lat="30.53" lng="-89.68" zoom="8">
<gm:handleEvent event="select" src="listFire"/>
</gm:map>
</td>
</tr>
</table>
</gm:section> 


<gm:section id="sectionPost" title="Post">
<div>
<h3>Post</h3>
</div>
<table width="100%">
<tr>
<td style="padding-right:10px; width:250px" valign="top">
<gm:list id="listPost" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=postofficet%3D1"
pagesize="10" template="myListTemplate">
<gm:handleEvent event="select" src="mapPost"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="mapPost" style="border:solid black 1px" control="large"
maptypes="true" data="${listPost}" geolocationref="gsx:location"
infotemplate="myMapDetailsTemplate"
lat="30.53" lng="-89.68" zoom="8">
<gm:handleEvent event="select" src="listPost"/>
</gm:map>
</td>
</tr>
</table>
</gm:section> 


<gm:section id="sectionLibraries" title="Libraries">
<div>
<h3>Libraries</h3>
</div>
<table width="100%">
<tr>
<td style="padding-right:10px; width:250px" valign="top">
<gm:list id="listLibraries" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=library%3D1"
pagesize="10" template="myListTemplate">
<gm:handleEvent event="select" src="mapLibraries"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="mapLibraries" style="border:solid black 1px" control="large"
maptypes="true" data="${listLibraries}" geolocationref="gsx:location"
infotemplate="myMapDetailsTemplate"
lat="30.53" lng="-89.68" zoom="8">
<gm:handleEvent event="select" src="listLibraries"/>
</gm:map>
</td>
</tr>
</table>
</gm:section> 


<gm:section id="sectionLawEnforcement" title="Law Enforcement">
<div>
<h3>Law Enforcement</h3>
</div>
<table width="100%">
<tr>
<td style="padding-right:10px; width:250px" valign="top">
<gm:list id="listLawEnforcement" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=lawenforce%3D1" 
  pagesize="10" template="myListTemplate">
<gm:handleEvent event="select" src="mapLawEnforcement"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="mapLawEnforcement" style="border:solid black 1px" control="large"
maptypes="true" data="${listLawEnforcement}" geolocationref="gsx:location"
infotemplate="myMapDetailsTemplate"
lat="30.53" lng="-89.68" zoom="8">
<gm:handleEvent event="select" src="listLawEnforcement"/>
</gm:map>
</td>
</tr>
</table>
</gm:section> 

<gm:section id="sectionHospitals" title="Hospitals">
<div>
<h3>Hospitals</h3>
</div>
<table width="100%">
<tr>
<td style="padding-right:10px; width:250px" valign="top">
<gm:list id="listHospitals" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=hospital%3D1"
pagesize="10" template="myListTemplate">
<gm:handleEvent event="select" src="mapHospitals"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="mapHospitals" style="border:solid black 1px" control="large"
maptypes="true" data="${listHospitals}" geolocationref="gsx:location"
infotemplate="myMapDetailsTemplate"
lat="30.53" lng="-89.68" zoom="8">
<gm:handleEvent event="select" src="listHospitals"/>
</gm:map>
</td>
</tr>
</table>
</gm:section> 


    <gm:section id="sectionDatabase" title="Database">
<div>
    <h3>Database</h3>
</div>
<iframe width='100%' height='100%' frameborder='0' src='http://spreadsheets.google.com/pub?key=p24J_PxaAu_Sb-82YvGs_Uw&output=html&gid=0&single=true&widget=true'></iframe>
</gm:section> 
 
    
    
  </gm:container>

         
  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:250px">
      <tr repeat="true">
        <td><gm:text ref="gsx:name"/></td>
      </tr>
              <tr>
         <td><gm:toggle/></td>
        </tr>
      <tfoot>
        <tr>
          <td align="center"><gm:pager compact="true"/></td>
        </tr>
      </tfoot>
    </table>
  </gm:template>

  <gm:template id="myMapDetailsTemplate">
<div repeat="true">
<b><gm:text ref="gsx:name"/></b><br/>
Asset type: <gm:text ref="gsx:category"/><br/>
Address: <gm:text ref="gsx:location"/><br/>
Phone: <gm:text ref="gsx:telephone"/>
<gm:toggle/>
</div>
</gm:template>


</gm:page>
