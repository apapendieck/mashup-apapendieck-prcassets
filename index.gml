<gm:page title="Picayune Assets" authenticate="false">

  <!--
    The mashup application demonstrates taking an external RSS feed from a google spreadsheet with
    and maps it to a Google Map using a "location" field and the "geolocationref" operator.
    @author: apapendieck@gmail.com
  -->
  
  <gm:tabs target="myContainer"/>
  <gm:container id="myContainer" style="padding:3px;border:1px solid #369;width:600px;">
    <gm:section id="sectionWorld" title="World">
      <gm:list id="World" template="myTemplate" data="http://www.digg.com/rss/containerworld_business.xml" pageSize="10"/>
    </gm:section>
    <gm:section id="sectionTech" title="Technology">
      <gm:list id="Technology" template="myTemplate" data="http://www.digg.com/rss/containertechnology.xml" pageSize="10"/>
    </gm:section>
    <gm:section id="sectionScience" title="Science">
      <gm:list id="Science" template="myTemplate" data="http://www.digg.com/rss/containerscience.xml" pageSize="10"/>
    </gm:section>
  </gm:container>
  <gm:template id="myTemplate">
    <table>
      <tbody repeat="true">
        <tr>
          <td><h3><gm:text ref="atom:title"/></h3></td>
        </tr>
        <tr>
         <td><gm:toggle/><gm:text ref="atom:summary" class="gm-toggled"/></td>
        </tr>
      </tbody>
    </table>
  </gm:template>
  
  
  
  
    <div>
      <h3>Pearl River County Assets: All Assets</h3> 
  </div>
  
  <table width="100%">
    <tr>
      <td style="padding-right:10px; width:250px" valign="top">
        <gm:list id="myList" data="http://spreadsheets.google.com/feeds/list/o17634829598942266075.5998631686442449819/od6/public/values?sq=category%3Dschool"
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
  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:250px">
      <tr repeat="true">
        <td><gm:text ref="gsx:name"/></td>
      </tr>
      <tfoot>
        <tr>
          <td align="center"><gm:pager compact="true"/></td>
        </tr>
      </tfoot>
    </table>
  </gm:template>

<iframe width='100%' height='500' frameborder='0' src='http://spreadsheets.google.com/pub?key=p24J_PxaAu_Sb-82YvGs_Uw&output=html&gid=0&single=true&widget=true'></iframe>

  <gm:template id="myMapDetailsTemplate">
<div repeat="true">
<b><gm:text ref="gsx:name"/></b><br/>
Asset type: <gm:text ref="gsx:category"/><br/>
Address: <gm:text ref="gsx:location"/><br/>
Phone: <gm:text ref="gsx:telephone"/>
</div>
</gm:template>

</gm:page>
