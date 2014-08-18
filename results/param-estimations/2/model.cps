<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.11 (Build 65) (http://www.copasi.org) at 2014-08-18 13:19:03 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="11" versionDevel="65" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-11-05T13:33:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <b xmlns="http://www.w3.org/1999/xhtml">
mass action rate law for first order irreversible reactions
</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <b xmlns="http://www.w3.org/1999/xhtml">
mass action rate law for reversible reactions
</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="R4_Law_Hill_function [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-21T14:19:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*S*I/(K_act+I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="S" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_258" name="I" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="K_act" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="PI3K signalling pathway" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.02214e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-10-29T17:24:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
        
      </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cytoplasm" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T16:18:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="pi45p2" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-06T15:04:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration of pi45p2 in Ung2008 paper is 0.5 uM (BIOMD0000000205)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="pi3k_act" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-06T15:09:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration is 0 uM
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="pten" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-06T15:10:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration of pten in Ung2008 paper is 0.1 uM (BIOMD0000000205)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="pip3" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-10-29T18:22:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration of pip3 in Ung2008 paper is 0.5 uM (BIOMD0000000205)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="pi3k" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T15:46:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration of pi3k in Ung2008 paper is 0.01 uM (BIOMD0000000205)

Initial concentration of pi3k in Borisov2009 paper is 0.2 uM (BIOMD0000000223)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="lig" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mass spec protocol data</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="---" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T16:14:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:biomodels.db:BIOMD0000000223" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration of egf is taken from the mass-spec experiment: 10 ng/ml with MW of 6353 is equivalent to 0.00157 uM

Initial concentration of egf in Borisov2009 paper is 0.001 uM (BIOMD0000000223)

Initial concentration of egf in Ung2008 paper is 0.008 uM (BIOMD0000000205)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="rec" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Supplementary file</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19357636" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T16:13:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:biomodels.db:BIOMD0000000223" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration of egf receptor in Ung2008 paper is 0.3 uM (BIOMD0000000205)

Initial concentration of egf receptor in Kholodenko1999 paper is 0.1 uM (BIOMD0000000048)

Initial concentration of egf receptor in Borisov2009 paper is 0.1 uM (BIOMD0000000223)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="pi45p2_pi3k_act" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-20T10:46:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration is 0 uM
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="pip3_pten" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-19T22:11:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Initial concentration is 0 uM
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="rec_lig" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-12-20T17:03:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="rec_dimer" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-12-20T17:15:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="rec_phosp" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-12-20T17:16:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="alpha" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-11-05T14:01:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="egf_binding" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Supplementary file</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19357636" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T16:10:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:biomodels.db:BIOMD0000000223" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Ung2008 paper (BIOMD0000000205):
k1 = 100 uM/s
k2 = 0.0038 1/s
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1613" name="k1" value="29"/>
          <Constant key="Parameter_1614" name="k2" value="0.022"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_1613"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_6"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_1614"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="pi3k_pi45p2_binding" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T16:24:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1615" name="k1" value="21.9776"/>
          <Constant key="Parameter_1616" name="k2" value="0.713262"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_1615"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_1"/>
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_1616"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="pip3_pten_binding" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-07T16:24:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1617" name="k1" value="12.3662"/>
          <Constant key="Parameter_1618" name="k2" value="0.61713"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_1617"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_1618"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="pi3k_deactivation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-19T16:38:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1619" name="k1" value="9.07127"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_1619"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="pip3_pi45p2_production" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-19T16:48:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1620" name="k1" value="48.0339"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_1620"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="pi45p2_pip3_production" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-19T16:51:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1621" name="k1" value="3.30994"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_1621"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="pi3k_activation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-21T14:18:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>kiselev@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kiselev</vCard:Family>
            <vCard:Given>Vladimir</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_1622" name="k" value="2.53408"/>
          <Constant key="Parameter_1623" name="K_act" value="1.63014"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_1622"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_1623"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="pip3_degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-11-13T12:58:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1624" name="k1" value="1.39664"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_1624"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="egfr_dimerization" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-12-20T17:03:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1625" name="k1" value="10"/>
          <Constant key="Parameter_1626" name="k2" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_1625"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_1626"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="egfr_phosphorylation" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-12-20T17:06:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_1627" name="k1" value="1.33"/>
          <Constant key="Parameter_1628" name="k2" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="Parameter_1627"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="Parameter_1628"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="egfr_internalization" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-01-15T16:21:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_1629" name="v" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_1629"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 1134571.513236 113.4571513236 0 0 340371.4539708 0 453828.6052944 260951448.04428 218454.7850487026 3562.55455156104 3.768e-12 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="1"/>
        <Parameter name="StepSize" type="float" value="900"/>
        <Parameter name="Duration" type="float" value="900"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="parameter_scan.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="5"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="1"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="true" updateModel="true">
      <Report reference="Report_5" target="param-est-report.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
        <Parameter name="Calculate Statistics" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pi3k_activation],ParameterGroup=Parameters,Parameter=K_act,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.63014"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pi3k_activation],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="2.534083543273658"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pi3k_deactivation],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="9.071266172656641"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pi3k_pi45p2_binding],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="21.97760647509997"/>
            <Parameter name="UpperBound" type="cn" value="50"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pi3k_pi45p2_binding],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.7132617196741958"/>
            <Parameter name="UpperBound" type="cn" value="7"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pip3_pi45p2_production],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="48.03388978075348"/>
            <Parameter name="UpperBound" type="cn" value="50"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pip3_pten_binding],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="12.36616042155529"/>
            <Parameter name="UpperBound" type="cn" value="15"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pip3_pten_binding],ParameterGroup=Parameters,Parameter=k2,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.6171296976656776"/>
            <Parameter name="UpperBound" type="cn" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pip3_degradation],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.396638782553453"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Reactions[pi45p2_pip3_production],ParameterGroup=Parameters,Parameter=k1,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="3.309942237190457"/>
            <Parameter name="UpperBound" type="cn" value="10"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pten],Reference=InitialConcentration"/>
            <Parameter name="StartValue" type="float" value="0.09627193283992767"/>
            <Parameter name="UpperBound" type="cn" value="1.0"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="pten_lit">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="pten_lit.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_1"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="5"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pip3],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pi45p2],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Values[alpha],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pten],Reference=InitialConcentration"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="wt_lit.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="7"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="4"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pip3],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pi45p2],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=PI3K signalling pathway,Vector=Values[alpha],Reference=InitialValue"/>
                <Parameter name="Role" type="unsignedInteger" value="1"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="2"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="40"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="pi3k_activation" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="pi3k" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pi3k],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pi3k_act" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pi3k_act],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="pip3" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="pip3" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pip3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pip3_pten" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pip3_pten],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="pi45p2" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="pi45p2" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pi45p2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pi45p2_pi3k_act" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[pi45p2_pi3k_act],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="receptor_activation" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="rec_dimer" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[rec_dimer],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="rec_lig" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[rec_lig],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="rec_phosp" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[rec_phosp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="rec" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=PI3K signalling pathway,Vector=Compartments[cytoplasm],Vector=Metabolites[rec],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="[pip3]" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="pten_lit(Measured Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pten_lit(Fitted Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pten_lit(Weighted Error)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment(Measured Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment(Fitted Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment(Weighted Error)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="[pi45p2]" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="pten_lit(Measured Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pten_lit(Fitted Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="pten_lit(Weighted Error)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=pten_lit,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment(Measured Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment(Fitted Value)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment(Weighted Error)" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="model3.xml">
    <SBMLMap SBMLid="compartment_1" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="function_2" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="species_21" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="species_23" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="species_40" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_0"/>
  </SBMLReference>
</COPASI>
