within SiemensPower.Media.TTSE.Utilities;
function rho_ph_d2p "rho, d2rhodp2, d2rhodhdp as function of p and h"

  import SI = Modelica.SIunits;
  input SI.Pressure p "Pressure";
  input SI.SpecificEnthalpy h "Specific enthalpy";

  output Real d2rho_dp;

  external "C" d2rho_dp=TTSE_d2_rho_ph_dp(p,h);
   annotation (Library={"TTSEmoI", "TTSE"}, Documentation(info="<html>
<p>This function returns the second partial derivative of rho wrtp versus p and h according to TTSE. </p>
</html>
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

end rho_ph_d2p;
