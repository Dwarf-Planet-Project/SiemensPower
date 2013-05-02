within SiemensPower.Media.TTSE.Utilities;
function p_rhoh "p(rho,h)"
  import SI = Modelica.SIunits;

  input SI.Density rho "Density";
  input SI.SpecificEnthalpy h "Specific enthalpy";

  output SI.Pressure p "Pressure";

 external "C" p = TTSE_p_rhoh(rho,h)   annotation (Library={"TTSEmoI", "TTSE"}, derivative=der_p_rhoh, Documentation(
 info="<HTML>
                    <p>This function returns the pressure as function of rho and h. The water/steam functions are computed according to TTSE.
                    </p>
                   </HTML>",
    revisions="<html>
                      <ul>
                              <li> May 2011 by Julien Bonifay
                       </ul>
                        </html>"));

  annotation (Documentation(info="<HTML>
                    <p>This function returns the pressure as function of rho and h. The water/steam functions are computed according to TTSE.
                    </p>
                   </HTML>

<HTML> 
       <p>  
           <table>
                <tr>
                              <td><b>Author:</b>  </td>
                              <td><a href=\"mailto:\"julien.bonifay@siemens.com>Julien Bonifay</a> </td>
                        <td><a href=\"https://scd.siemens.com/db4/v3/lookUp.d4w?tcgid=Z001K4SN\">SCD</a> </td>
                       </tr>
                <tr>
                           <td><b>Checked by:</b>   </td>
                           <td>            </td>
                </tr> 
                <tr>
                           <td><b>Protection class:</b>    </td>
                           <td>internal </td>
                </tr> 

           </table>
                Copyright &copy  2007 Siemens AG. All rights reserved.<br> <br>
               This model is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY. 
           For details see <a href=\"../Documents/Disclaimer.html\">disclaimer</a> <br>
        </p>
</HTML>"));
end p_rhoh;
