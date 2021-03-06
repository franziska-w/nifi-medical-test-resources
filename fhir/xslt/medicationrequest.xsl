<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fhir="http://hl7.org/fhir">

<!-- Set separator and new line characters -->
<xsl:variable name="customSeparator" select="';'"/>
<xsl:variable name="customNewLine" select="'&#xa;'"/>

<!-- ======================================================================= -->
<!-- Template:    Match id node and MedicationRequest node                   -->
<!-- Description: Extract values of nodes appearing 0...1 per MedicationReq. -->
<!-- ======================================================================= -->

  <xsl:template match="*|fhir:MedicationRequest">
 
    <!-- id -->
    <xsl:value-of select="fhir:id/@value"/><xsl:value-of select="$customSeparator"/>
      
    <xsl:value-of select="fhir:status/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/statusReason has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:statusReason/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:statusReason/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:statusReason/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:statusReason/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:statusReason/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:statusReason/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:intent/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:priority/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:doNotPerform/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:reportedBoolean/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/reportedReference has FHIR data type: Reference -->
    <xsl:value-of select="fhir:reportedReference/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:reportedReference/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add reported reference identifier here if required -->
    <xsl:value-of select="fhir:reportedReference/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/contained/Medication has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:id/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:code/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:code/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:code/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:code/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:code/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:contained/fhir:Medication/fhir:code/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/medicationReference has FHIR data type: Reference -->
    <xsl:value-of select="fhir:medicationReference/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:medicationReference/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add medication reference identifier here if required -->
    <xsl:value-of select="fhir:medicationReference/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    
    <!-- MedicationRequest/subject has FHIR data type: Reference -->
    <xsl:value-of select="fhir:subject/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:subject/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add subject identifier here if required -->
    <xsl:value-of select="fhir:subject/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/encounter has FHIR data type: Reference -->
    <xsl:value-of select="fhir:encounter/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:encounter/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add encounter identifier here if required -->
    <xsl:value-of select="fhir:encounter/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:authoredOn/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/requester has FHIR data type: Reference -->
    <xsl:value-of select="fhir:requester/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:requester/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add requester identifier here if required -->
    <xsl:value-of select="fhir:requester/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/performer has FHIR data type: Reference -->
    <xsl:value-of select="fhir:performer/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:performer/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add performer identifier here if required -->
    <xsl:value-of select="fhir:performer/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/performerType has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:performerType/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:performerType/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:performerType/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:performerType/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:performerType/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:performerType/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/recorder has FHIR data type: Reference -->
    <xsl:value-of select="fhir:recorder/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:recorder/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add recorder identifier here if required -->
    <xsl:value-of select="fhir:recorder/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/groupIdentifier has FHIR data type: Identifier -->
    <xsl:value-of select="fhir:groupIdentifier/fhir:use/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- MedicationRequest/groupIdentifier/type has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:groupIdentifier/fhir:type/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:type/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:type/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:type/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:type/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:type/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:period/fhir:start/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:groupIdentifier/fhir:period/fhir:end/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/courseOfTherapyType has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:courseOfTherapyType/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:courseOfTherapyType/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:courseOfTherapyType/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:courseOfTherapyType/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:courseOfTherapyType/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:courseOfTherapyType/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/dispenseRequest/initialFill/quantity has FHIR data type: SimpleQuantity (?) -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:quantity/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:quantity/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:quantity/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:quantity/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/dispenseRequest/initialFill/duration has FHIR data type: Duration (?) -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:duration/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:duration/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:duration/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:initialFill/fhir:duration/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/dispenseRequest/dispenseInterval has FHIR data type: Duration (?) -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:dispenseInterval/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:dispenseInterval/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:dispenseInterval/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:dispenseInterval/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:dispenseRequest/fhir:validityPeriod/fhir:start/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:validityPeriod/fhir:end/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:dispenseRequest/fhir:numberOfRepeatsAllowed/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/dispenseRequest/quantity has FHIR data type: SimpleQuantity (?) -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:quantity/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:quantity/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:quantity/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:quantity/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/dispenseRequest/expectedSupplyDuration has FHIR data type: Duration (?) -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:expectedSupplyDuration/fhir:value/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:expectedSupplyDuration/fhir:unit/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:expectedSupplyDurationn/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:expectedSupplyDuration/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/dispenseRequest/performer has FHIR data type: Reference -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:performer/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:dispenseRequest/fhir:performer/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add dispense request performer identifier here if required -->
    <xsl:value-of select="fhir:dispenseRequest/fhir:performer/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>

    <xsl:value-of select="fhir:substitution/fhir:allowedBoolean/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/substitution/allowedCodeableConcept has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:substitution/fhir:allowedCodeableConcept/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:allowedCodeableConcept/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:allowedCodeableConcept/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:allowedCodeableConcept/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:allowedCodeableConcept/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:allowedCodeableConcept/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/substitution/reason has FHIR data type: CodeableConcept -->
    <xsl:value-of select="fhir:substitution/fhir:reason/fhir:coding/fhir:system/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:reason/fhir:coding/fhir:version/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:reason/fhir:coding/fhir:code/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:reason/fhir:coding/fhir:display/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:reason/fhir:coding/fhir:userSelected/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:substitution/fhir:reason/fhir:text/@value"/><xsl:value-of select="$customSeparator"/>

    <!-- MedicationRequest/priorPrescription has FHIR data type: Reference -->
    <xsl:value-of select="fhir:priorPrescription/fhir:reference/@value"/><xsl:value-of select="$customSeparator"/>
    <xsl:value-of select="fhir:priorPrescription/fhir:type/@value"/><xsl:value-of select="$customSeparator"/>
    <!-- add prior prescription identifier here if required -->
    <xsl:value-of select="fhir:priorPrescription/fhir:display/@value"/><xsl:value-of select="$customNewLine"/>

  </xsl:template>
</xsl:stylesheet>
