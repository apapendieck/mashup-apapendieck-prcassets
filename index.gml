<gm:page title="Picayune Assets" authenticate="false">

  <!--
    The mashup application demonstrates taking an external RSS feed from a google spreadsheet with
    and maps it to a Google Map using a "location" field and the "geolocationref" operator.
    @author: apapendieck@gmail.com
  -->

  <div class="gm-app-header">
    <h3>Pearl River County Assets: All Assets</h3> 
  </div>

  <gm:tabs target="myContainer"/>

  <gm:container id="myContainer" style="width:600px">
      
    <gm:section id="section1" title="Static text">
test

  
  <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="myList" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=category%3D${categorylist}"
            pagesize="10" template="myListTemplate">
          <gm:handleEvent event="select" src="myMap"/>
        </gm:list>
      </td>
      <td valign="top">
        <gm:map id="myMap" style="border:solid black 1px" control="large"
            maptypes="true" data="${myList}" geolocationref="gsx:location"
            infotemplate="myMapDetailsTemplate"
            lat="30.53" lng="-89.68" zoom="8">
          <gm:handleEvent event="select" src="myList"/>
        </gm:map>
      </td>
    </tr>    
  </table>
  
 

      </gm:section>

  
    <gm:section id="section2" title="Data">
<h4><a href="http://spreadsheets.google.com/pub?key=p24J_PxaAu_Sb-82YvGs_Uw">View Database</a></h4>
    </gm:section>
    
  </gm:container>
  
</gm:page>
