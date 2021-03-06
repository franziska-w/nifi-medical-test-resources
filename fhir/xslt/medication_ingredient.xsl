<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fhir="http://hl7.org/fhir">

<!-- Set separator and new line characters -->
<xsl:variable name="customSeparator" select="';'"/>
<xsl:variable name="customNewLine" select="'&#xa;'"/>

<!-- Header information:
     id;coding_system;coding_version;coding_code;coding_display;coding_userSelected;text;itemRef_reference;itemRef_type;itemRef_display;isActive;numerator_value;numerator_comparator;numerator_unit;numerator_system;numerator_code;denominator_value;denominator_comparator;denominator_unit;denominator_system;denominator_code -->
  
<!-- ======================================================================= -->
<!-- Template:    Match id node and Medication node                          -->
<!-- Description: Extract values of nodes appearing 0...1 per ingredient     -->
<!-- ======================================================================= -->

  <xsl:template match="*|fhir:Medication">

    <xsl:variable name="id" select="fhir:id"/>
    <xsl:for-each select="fhir:ingredient">
      
      <!-- id -->
      <xsl:value-of select="$id/@value"/><xsl:value-of select="$customSeparator"/>

      <!-- Medication/ingredient/itemCodeableConcept has FHIR data type: CodeableConcept -->
      <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:itemCodeableConcept/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:itemCodeableConcept/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

      <!-- Medication/ingredient/itemReference has FHIR data type: Reference -->
      <xsl:value-of select="fhir:itemReference/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:itemReference/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
      <!-- Add item reference identifier here if required -->
      <xsl:value-of select="fhir:itemReference/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

      <xsl:value-of select="fhir:isActive/@value"/><xsl:value-of select="$customSeparator"/>

      <!-- Medication/ingredient/strength has FHIR data type: Ratio -->
      <!-- Medication/ingredient/strength/numerator has FHIR data type: Quantity -->
      <xsl:value-of select="fhir:strength/fhir:numerator/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:numerator/fhir:comparator/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:numerator/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:numerator/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:numerator/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
      <!-- Medication/ingredient/strength/denominator has FHIR data type: Quantity -->
      <xsl:value-of select="fhir:strength/fhir:denominator/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:denominator/fhir:comparator/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:denominator/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:denominator/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
      <xsl:value-of select="fhir:strength/fhir:denominator/fhir:code/@value"/><xsl:value-of select="$customNewLine"/>

    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
