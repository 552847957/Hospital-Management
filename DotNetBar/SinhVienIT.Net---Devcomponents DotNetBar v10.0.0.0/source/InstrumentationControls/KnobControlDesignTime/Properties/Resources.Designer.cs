﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.4952
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DevComponents.DotNetBarKnobControl.Design.Properties {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "2.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("DevComponents.DotNetBarKnobControl.Design.Properties.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        internal static System.Drawing.Bitmap Copy {
            get {
                object obj = ResourceManager.GetObject("Copy", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The currency (&quot;C&quot;) format specifier converts a number to a string that represents a currency amount.
        ///
        ///The precision specifier indicates the desired number of decimal places in the result string..
        /// </summary>
        internal static string CurrencyDesc {
            get {
                return ResourceManager.GetString("CurrencyDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Characters that can be used to create custom numeric format strings:
        ///
        ///&apos;0&apos; - Zero placeholder, &apos;#&apos; - Digit placeholder, &apos;.&apos; - Decimal point, &apos;,&apos; - Group separator and number scaling , &apos;%&apos; - Percentage, &apos;E0&apos; - Scientific notation, &apos;\&apos; - Escape character, &apos;;&apos; - Section separator. 
        ///
        ///All other characters are copied to the output string as literals in the position they appear..
        /// </summary>
        internal static string CustomDesc {
            get {
                return ResourceManager.GetString("CustomDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The decimal (&quot;D&quot;) format specifier converts a number to a string of decimal digits (0-9), prefixed by a minus sign if the number is negative. This format is supported only for integral types. 
        ///
        ///The precision specifier indicates the minimum number of digits desired in the resulting string. If required, the number is padded with zeros to its left to produce the number of digits given by the precision specifier. If no precision specifier is specified, the default is the minimum value required to represent th [rest of string was truncated]&quot;;.
        /// </summary>
        internal static string DecimalDesc {
            get {
                return ResourceManager.GetString("DecimalDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The exponential or Scientific (&quot;E&quot;) format specifier converts a number to a string of the form &quot;-d.ddd…E+ddd&quot; or &quot;-d.ddd…e+ddd&quot;, where each &quot;d&quot; indicates a digit (0-9). The string starts with a minus sign if the number is negative. Exactly one digit always precedes the decimal point.
        ///
        ///The precision specifier indicates the desired number of digits after the decimal point. If the precision specifier is omitted, a default of six digits after the decimal point is used..
        /// </summary>
        internal static string ExponentialDesc {
            get {
                return ResourceManager.GetString("ExponentialDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The fixed-point (&quot;F&quot;) format specifier converts a number to a string of the form &quot;-ddd.ddd…&quot; where each &quot;d&quot; indicates a digit (0-9). The string starts with a minus sign if the number is negative.
        ///
        ///The precision specifier indicates the desired number of decimal places..
        /// </summary>
        internal static string FixedPointDesc {
            get {
                return ResourceManager.GetString("FixedPointDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The general (&quot;G&quot;) format specifier converts a number to the most compact of either fixed-point or scientific notation, depending on the type of the number and whether a precision specifier is present.
        ///
        ///The precision specifier defines the maximum number of significant digits that can appear in the result string..
        /// </summary>
        internal static string GeneralDesc {
            get {
                return ResourceManager.GetString("GeneralDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The hexadecimal (&quot;X&quot;) format specifier converts a number to a string of hexadecimal digits. This format is supported only for integral types.
        ///
        ///The precision specifier indicates the minimum number of digits desired in the resulting string. If required, the number is padded with zeros to its left to produce the number of digits given by the precision specifier..
        /// </summary>
        internal static string HexadecimalDesc {
            get {
                return ResourceManager.GetString("HexadecimalDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The numeric (&quot;N&quot;) format specifier converts a number to a string of the form &quot;-d,ddd,ddd.ddd…&quot;, where &quot;-&quot; indicates a negative number symbol if required, &quot;d&quot; indicates a digit (0-9), &quot;,&quot; indicates a group separator, and &quot;.&quot; indicates a decimal point symbol.
        ///
        ///The precision specifier indicates the desired number of decimal places..
        /// </summary>
        internal static string NumericDesc {
            get {
                return ResourceManager.GetString("NumericDesc", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The percent (&quot;P&quot;) format specifier multiplies a number by 100 and converts it to a string that represents a percentage.
        ///
        ///The precision specifier indicates the desired number of decimal places..
        /// </summary>
        internal static string PercentDesc {
            get {
                return ResourceManager.GetString("PercentDesc", resourceCulture);
            }
        }
    }
}