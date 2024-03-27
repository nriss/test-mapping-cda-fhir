
# Generate a StructureMap

sudo java -jar validator_cli.jar  -compile http://interop.esante.gouv.fr/ig/fhir/cda-fhir-maps/StructureMap/CdaToPatient -ig StructureMap/CdaToPatient.map -version 4.0.1 -output generated-structuremap-cda-to-patient.json

sudo java -jar validator_cli.jar  -compile http://fhir.ch/ig/cda-fhir-maps/StructureMap/CdaToFhirTypes -ig StructureMap/CdaToFHIRTypes.map -version 4.0.1 -output generated-structuremap-cda-to-fhirtypes.json

# Transform

sudo java -jar validator_cli.jar cda/DOC0001.XML -output output.json -transform http://interop.esante.gouv.fr/ig/fhir/cda-fhir-maps/StructureMap/CdaToPatient -version 4.0  -ig hl7.cda.uv.core -ig ch.fhir.ig.cda-fhir-maps -ig http://fhir.ch/ig/cda-fhir-maps/StructureMap/CdaToFhirTypes -ig generated-structuremap.json -ig generated-structuremap-cda-to-fhirtypes.json -ig StructureMap/CdaToPatient.map