<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fhir="http://hl7.org/fhir">

<!-- Set separator and new line characters -->
<xsl:variable name="customSeparator" select="';'"/>
<xsl:variable name="customNewLine" select="'&#xa;'"/>
  
<!-- ======================================================================= -->
<!-- Template:    Match id node and Medication node                          -->
<!-- Description: Extract values of nodes appearing 0...1 per Medication     -->
<!-- ======================================================================= -->

  <xsl:template match="*|fhir:Medication">

    <!-- id -->
    <xsl:value-of select="fhir:id/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- Medication/code has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:code/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:code/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:code/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:code/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:code/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:code/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:status/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- Medication/manufacturer has FHIR data type: Reference -->
    <xsl:value-of select="fhir:manufacturer/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:manufacturer/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add manufacturer identifier here if required -->
    <xsl:value-of select="fhir:manufacturer/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    
    <!-- Medication/form has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:form/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:form/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:form/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:form/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:form/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:form/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- Medication/amount has FHIR data type: Ratio -->
    <!-- Medication/amount/numerator has FHIR data type: Quantity -->
    <xsl:value-of select="fhir:amount/fhir:numerator/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:numerator/fhir:comparator/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:numerator/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:numerator/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:numerator/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- Medication/amount/denominator has FHIR data type: Quantity -->
    <xsl:value-of select="fhir:amount/fhir:denominator/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:denominator/fhir:comparator/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:denominator/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:denominator/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:amount/fhir:denominator/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:batch/fhir:lotNumber/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:batch/fhir:expirationDate/@value"/><xsl:value-of select="$customNewLine"/>

  </xsl:template>
</xsl:stylesheet>
