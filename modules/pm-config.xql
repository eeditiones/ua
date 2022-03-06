
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-ua-web="http://www.tei-c.org/pm/models/ua/web/module" at "../transform/ua-web-module.xql";
import module namespace pm-ua-print="http://www.tei-c.org/pm/models/ua/fo/module" at "../transform/ua-print-module.xql";
import module namespace pm-ua-latex="http://www.tei-c.org/pm/models/ua/latex/module" at "../transform/ua-latex-module.xql";
import module namespace pm-ua-epub="http://www.tei-c.org/pm/models/ua/epub/module" at "../transform/ua-epub-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ua.odd" return pm-ua-web:transform($xml, $parameters)
    default return pm-ua-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ua.odd" return pm-ua-print:transform($xml, $parameters)
    default return pm-ua-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ua.odd" return pm-ua-latex:transform($xml, $parameters)
    default return pm-ua-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "ua.odd" return pm-ua-epub:transform($xml, $parameters)
    default return pm-ua-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    