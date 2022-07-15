;NCC-MERP Dangerous Abbreviations Substitution
;by Stephen A." "* Vaughn MD PhD
;Copyright 2020 Veterans Administration MIT License." "* Permission is hereby granted," "* free of charge," "* to any person obtaining a copy of this software and associated documentation files " "*(the " "*"Software"" "*)" "*," "* to deal in the Software without restriction," "* including without limitation the rights to use," "* copy," "* modify," "* merge," "* publish," "* distribute," "* sublicense," "* and/or sell copies of the Software," "* and to permit persons to whom the Software is furnished to do so," "* subject to the following conditions:: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.THE SOFTWARE IS PROVIDED " "*"AS IS"" "*," "* WITHOUT WARRANTY OF ANY KIND," "* EXPRESS OR IMPLIED," "* INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY," "* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT." "* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM," "* DAMAGES OR OTHER LIABILITY," "* WHETHER IN AN ACTION OF CONTRACT," "* TORT OR OTHERWISE," "* ARISING FROM," "* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.End license text." "*"
;:c1?0:OD::right eye
;revised 9/11/20
;
#InstallKeybdHook
SetTitleMatchMode, 1
InputBox, password, Enter Your CPRS Password, (your input will be encrypted), hide,250,,367,391
MsgBox,Press F10 to sign. Press F11 to sign and skip to the next open entry.
;Function Key Assignment
;F3 is a block add labs - shotgun
F3::
Return
;F4 is the RCT button
F4::
    SendInput #RCT (A conversation has been made with the patient on consult.)
Return
;Step Through SIX
F5::
    Loop 6
        {Send {Alt down}n{Alt up}
    Sleep 1500 ; Keep it down for 0.1 second.
}
return
;UpToDate Password
F7::
    SendRaw,CkriARWoniGdE!
return
;SCT for vaccination
;F9::SendInput 425457005
;return
;One signature
!m::
    ;stack F10's
F9::
    Sleep 2000
    MouseClick, Right
    Sleep 2000
    MouseClick, ,1307, 846
    Sleep 2000
    Send {Tab}
    Sleep 2000
    Send {F10}
F10::
    SendInput %password%
    SendInput `n
return
;ctl-b adds a CR.
!B::
    SendInput %password%
    SendInput `n
    SendInput !n
return
^B::
    SendInput %password%
    SendInput `n
    SendInput !n
return
;starts this sequence
CoordMode, Mouse, Client
InputBox, password, Enter Your CPRS Pasword, ;(your input will be encrypted), hide,250,,367,391
MsgBox,Press F11 to sign and skip to the next open entry.
;that's for F10 pssword
F11::
    FooBar := ""
    WinGet, FooBar ,, VistA CPRS in use
    WinActivate, FooBar
    ;Gets the window titled CPRS in use.
    UniqueID := WinExist ( "ahk_class TRichEdit3")
    WinActivate , UniqueID
    MouseClick , Right , 851, 299
    MouseClick , , 925, 645
    ;now add password etc.
    SendInput %password%
    SendInput `n
    ;SendInput !n
    SetControlDelay 50
return
;A number of signatures
;:c1?0:HEENT::eyes: EOM intact," "* conjugate and unremarkable." "* Nose midline no discharge." "* " "* Ears unremarkable." "* " "* Throat clear." "*"
;:c1?0:San::the New Mexico Veterans Affairs Health Care System (NMVAHCS)Raymond G. Murphy VA  Medical Center, 1501 San Pedro SE, Albuquerque, NM 87108 (505) 265-1711
;:c1?0:SK::seborrheic keratosis
;  * allows immediate replacement without space; 1?0 is don't insert in words. c is case-sensitive.
:*c:reved::Reviewed order check, did not find grounds for adjustment or discontinuation.
    :*c1?0:patinet::patient
:*c1?0:PRN::as needed
:*c:ACS::ambulatory care service
:c:POAG::primary open-angle glaucoma
:*c:USAF::US Air Force
:c:USN::US Navy 
:c:NMO::New Mexico Orthopedics
:c:USMC::US Marine Corps
:c:SRMC::UNM Sandoval Regional Medical Center
:*c:NSGY::neurosurgery
:c:IPMN::intraductal papillary mucinous neoplasms of the pancreas
:c:NPI::1700934833
:c:PECOS::Pecos
:*c:Tam::tamsulosin
:*c:AdCap::adhesive capsulitis
:c:OA::osteoarthritis
:*c:PMLE::polymorphous light eruption
:c:MVA::motor vehicle accident 
:c:LBP::lower back pain
:c:CMC::carpal-metacarpal joint
:*c:nephroli::nephrolithiasis
:*c:ETT::exercise tolerance test (cardiac treadmill)
:*c1?0:CXR::chest x-ray
:*c1?0:QD::daily
:*c1?0:QH::bedtime
:*c:bx::biopsy
:*c::psuedoc::pseudoclaudication
:*c:RadPros::radical prostatectomy
:*c1?1:MetSyn::metabolic syndrome
:*c1?0:SADD::substance abuse dependency disorder
:*c:PMT::point of maximal tenderness
:c:N/C::no complaint
:*c:SLAPP::superior labrum- anterior to posterior tear
:*c1?0:CBMZ::carbamazepine
:c:Eliquis::apixaban
:c:dz::disease
:c:APCP::anginal pattern chest pain
:c:PCI::primary percutaneous coronary intervention
:c1?0:colo::colonoscopy
:c:GI::gastroenterology
:*c:CPCP::cardiac pattern chest pain
:c:alpha-one::α1
:c:alpha-1::α1
:c:alpha-two::α2
:c:aobut::about
:c:alpha-2::α1
:c:beta::β
:*c:EIC::epidermal inclusion cyst
:c:AC::acromioclavicular joint
:*c:LABA::long-acting beta agonists
:*c:SABA::short-acting beta agonists
:c:RAD::reactive airway disease
:c:PCOS::polycystic ovarian syndrome 
:c:HypoD::hypovitaminosis D
:c:NSR::normal sinus rhythm
:c:DOAC::direct oral anticoagulation
:c:DPP4::dipeptidyl peptidase-4 inhibitor
:*c1?1:azith:: Azithromycin
:*c:TubAd::tubular adenoma
:c:FH::Family history
:*c:VitD::vitamin D
:*c:VitA::vitamin A
:*c:VitE::vitamin E
:*c:VitK::vitamin K
:*c:VitC::vitamin C
:*c1?0:QOD::AvAry other day
:c1?1:AfAm::African-American
:c:RFU::regular followup
:c:PMH::previous medical history
:*c1?1:l'eft::left
:*c1?1:r'ight::right
:c1?0:AF::longstanding persistent atrial fibrillation (ICD-10-CM I48. 21)
:?c1?0:PAF::paroxysmal atrial fibrillation (ICD-10-CM I48. 11)
:*c:circuation::circulation
:c:ATT::anterior tibial tubercle
:c:H/A::headache
:c1?0:MSK::musculoskeletal clinic
:*c:degree::°
:c1?1:SZ::seizure
:*c:ABK::accessory bundle of Kent
:*c:WPW::Wolff-Parkinson-White syndrome
:c:EP::electrophysiology
:*c1?1:NMNG::New Mexico National Guard
:c1?0:RHCM::routine healthcare maintenance
:c1?0:TBI::traumatic brain injury (closed head trauma)
:c1?1:GLP::glucagon-like peptide 1 receptor agonist
:c1?1:NKDA::no known drug allergies
:*c1?1:NWM::NWMETRO TEAMLET 13/MD
:*c1?1:FOI::flight of ideas
:c1?1:SSZ::sulfasalazine
:*c:HCC::hepatocellular carcinoma
:*c:TACE::transarterial chemoembolization
:*c1?1:BRBPR::bright red blood per rectum
:*c1?1:MTX::methotrexate
:c1?1:PsoA::psoriatic arthritis
;:c:NCAd::C:\Users\VHAABQVAUGHS\OneDrive - Department of Veterans Affairs\MyGits\NCCmerp2422.ahk
:c:NCAd::C:\Users\VHAABQVAUGHS\OneDrive - Department of Veterans Affairs\MyGits\NCCmerp033022.ahk
:c1?1:LOA::loosening of association
:*c1?1:SGL::sodium-glucose co-transporter 2 inhibitor
:c1?1:SG2::sodium-glucose co-transporter 2 inhibitor
:*c1?1:sodium-glucose::sodium-glucose co-transporter 2 inhibitor
:^c:Pres::Presbyterian Medical Group
:*c:C'VA::CVA
:c:d/w::discuss with
:c:TKR::total knee replacement
:c:THR::total hip replacement
:$c1?0:HOH::hard of hearing
:$c:CVA::stroke (cerebrovascular accident)
:$c:T'IA::TIA
:$c:TIA::transient ischemic attack (mini-stroke)
:c::FOI/LOA::flight of ideas, loosening of association
:*c:AAA::abdominal aortic aneurysm
:c:Abq::Albuquerque
:c:ACE::angiotensin converting enzyme inhibitor
:c:ARB::angiotensin receptor blocker
:c:BCG::Bacillus Calmette-Guérin
:*c:benzo::benzodiazepine
:c:clopidogrel::Clopidogrel-(platelet P2Y12 inhibitor)
:c:CNH::chondrodermatitis nodularis helicis
:c:CrClr::24-hour creatinine clearance
:c:DLBCL::diffuse large B-cell lymphoma
:c:EANM::Eye Associates of New Mexico
:c:FMD::fibromuscular dysplasia (vascular)
:c:FPC::familial polyposis coli
:c:JDG::jugulodigastric node
:*c:lis::lisinopril
:c:ORL::otorhinolaryngology (ENT)
:c:RR::Rio Rancho
:c:SCA::spinocerebellar atrophy
:c:SAV::Stephen A. Vaughn MD PhD
:c:SEA::Southeast Asia
:c:SF::Santa Fe
:c:SLP::speech & language pathology
:*c1?1:acanth::acanthosis nigricans
:c:sx::symptom(s)
:cc:PSIS::posterior superior iliac spine.
:c:rx::medication(s)
:c:tam::tamsulosin
:c:SS::supraspinatus
:c:IS::infraspinatus
:*c:subscap::subscapularis
:c:U/S::ultrasound
:c:UrAc::uric acid
:*c:NAI::non-arteritic anterior ischemic optic neuropathy
:c:VM::voice mail answered
:*c?0:anky::ankylosing spondylitis
:c1?0:/clav::/clavulanic acid
:c1?0:A1AT::alpha-1 antitrypsin inhibitor
:c:papulosa::dermatosis papulosa nigra
:c1?0:AD::right ear
:c1?0:AdCa::adenocarcinoma
:c1?0:ADMS::active duty military service
:c1?0:AICD::implantable cardioverter-defibrillator
:c1?0:AIMM::autoimmune
:c1?0:AK::actinic keratosis
:c1?0:amox::amoxicillin
:c1?0:AO::agent orange
:c1?0:appreicated::appreciated
:c1?0:AU::each ear
:c1?0:b/l::bilateral
:c1?0:BCC::basal cell carcinoma
:c1?0:BCCa::basal cell skin cancer
:c1?0:BH::behavioral health
:c1?0:BID::twice a day
:c1?0:BldCa::bladder cancer
:c1?0:BLE::bilateral lower extremities
:c1?0:BPD::bipolar affective disorder
:c1?0:BPH::benign prostatic hypertrophy
:c1?0:BrCa::breast cancer
:c1?0:c/w::consistent with
:c1?0:CABG::coronary artery bypass grafting
:c1?0:CAD::coronary artery disease
:c1?0:cc::mL
:c1?0:CCB::calcium channel blocker (antihypertensive)
:c1?0:CFS::chronic fatigue syndrome
:c1?0:CHI::closed head injury
:c1?0:chornic::chronic
:c1?0:CMO::cardiomyopathy
:c1?0:CMT::Charcot-Marie-Tooth Syndrome
:c1?0:COD::cause of death
:c1?0:Conn.::Remotely connected with patient who affirms his/her identity.
:c1?0:CSI::corticosteroid injection
:c1?0:CTS::carpal tunnel syndrome
:c1?0:CVST::cavernous venous sinus thrombosis
:c1?0:D/C::discharge/discontinue
:c1?0:Dicta::Ancillary/supplementary notes for review.
    :c1?0:DMII::diabetes type 2
:c*1?0:DOE ::dyspnea on exertion
:c:PE::pulmonary embolus
:c1?0:dx::diagnosis
:c1?0:EAM::external auditory meatus/i
:c1?0:EHTN::essential hypertension
:c1?0:ESLD::end-stage lung disease
:c1?0:ET::essential tremor
:c1?0:f/u::followup
:c1?0:F2F::face-to-face appointment
:c1?0:FOOSH::fall onto an outstretched hand
:c1?0:funciton::function
:c1?0:fx::fracture
:c1?0:H/O::hematology/oncology
:c1?0:HCTZ::hydrochlorothiazide
:c1?0:HS::bedtime
:c1?0:HTN::hypertension
:c1?0:ICMO::ischemic cardiomyopathy
:c1?0:ISH::isolated systolic hypertension
:c1?0:IU::international units
:c1?0:IVF::intravenous filter
:c1?0:KA::keratoacanthoma
:c:thal?0::dipyridamole sestamibi (persantine cardiolite)
:c1?0:left::LEFT-LEFT
:c1?0:LEO::law enforcement officer
:c1?0:LFT's::liver function tests
:c1?0:LHB::long head of the biceps
:c1?0:LLD::Leg Length Discrepancy 45939007/M21.70
:c1?0:LOC::loss of consciousness
:c1?0:LUTS::lower urinary tract symptoms
:c1?0:mcg::micrograms
:c1?0:MDD::major depressive disorder
:c1?0:ml::mL 
:c1?0:F/C/S::fever, chills or sweats 
:c1?0:IWMI::inferior wall myocardial infarction 
:c1?0:HFrEF::heart failure with reduced ejection fraction
:c1?0:N/V/D::nausea, vomiting or diarrhea 
:C1?0:TLIF::posterolateral spine fusion vs. transforaminal lumbar interbody fusion
:c1?0:MT::metatarsal
:c1?0:Murphy::the New Mexico Veterans Affairs Health Care System (NMVAHCS) Raymond G. Murphy VA Medical Center, 1501 San Pedro SE, Albuquerque, NM 87108 (505) 265-1711
:c1?0:N/D::not performed
:c1?0:NAD::no apparent distress
:c1?0:ND/NT NABS::nondistended and nontender; normal active bowel sounds
:c1?0:NED::no evidence of disease (esp. malignancy)
:c1?0:newvisit::Spec. appt arr. during the COVID epidemic to minimize exposure.
:c1?0:NHL::non-Hodgkin's lymphoma
:c1?0:NICMO::non-ischemic cardiomyopathy
;Med abbr's
:*c:rosu::rosuvastatin
:c:SLD::scapholunate dissociation
:c:xr::x-ray
:c:TAVR::percutaneous aortic valve replacement
:*c:atorv::atorvastatin
:*c:metop::metoprolol
:*c:aten::atenolol 
:c:VBI::vertebrobasal insufficiency
:c1:COW::circle of Willis
:c:MRA::magnetic resonance angiography
:*c:amio::amiodarone
:*c:Majo::Majocchi's granuloma
:c:HT::telehealth advise to return to current primary care physician or have new patient visit with selected primary care physician
:c1?0:NMCC::New Mexico Cancer Center
:c1?0:NQIP::ACS National Surgical Quality Improvement Program Surgical Risk Calculator
:c1?0:NQUIP::ACS National Surgical Quality Improvement Program Surgical Risk Calculator
:c1?0:NSQIP::ACS National Surgical Quality Improvement Program Surgical Risk Calculator
:c1?0:O/D::overdose
:c1?0:opto::optometry clinic call-in number 505-265-1711 x7940 
:c1?0:Optum::Optum Medical Group
:c1?0:OSA::obstructive sleep apnea
:c1?0:OU::each eye
:c1?0:PCP::primary care physician
:*c1?0:PCSK9::circulating proprotein convertase subtilisin/kexin type 9 inhibitor 
:*c1?0:PSK::circulating proprotein convertase subtilisin/kexin type 9 inhibitor
:c1?0:PDE5::phosphodiesterase-5 inhibitors
:c1?0:PF::plantar fascial fibromatosis (plantar fasciitis)
:c1?0:PFS::patellofemoral syndrome
:c1?0:PGE5::phosphodiesterase-5 inhibitors
:*c:lido::lidocaine 
:c:SDH::subdural hematoma
:c:y/a::years ago
:c:SLACK::X6KF=!9Je7dD[e7?
:c1?0:PFT::pulmonary function test
:c1?0:PLMS::periodic limb movements of sleep
:*c:NM Ortho::New Mexico Orthopedics
:c:FSH::follicle stimulating hormone
:c:SIBO::small bowel overgrowth syndrome 
:*c:IBS::irritable bowel syndrome 
:*c:IBD::inflammatory bowel disease 
:*c:CHF::congestive heart failure
:c:LH::luteinizing hormone
:c:B/F::bound & free
:c1?0:PMPw::mi&ajA*2u!rLP
:c1?0:PND::paroxysmal nocturnal dyspnea
:c1?0:prescriptoin::prescription
:*c1?0:ProsCa::prostate cancer
:c:SBP::systolic blood pressure 
:c:DBP::diastolic blood pressure 
:c:LIH::left inguinal hernia
:c:RIH::right inguinal hernia
:c:PCL::posterior cruciate ligament
:*c:menis::meniscus
:c:ACL::anterior cruciate ligament 
:c1?0:PTSD::post-traumatic stress disorder
:c:NAFLD::non-alcoholic fatty liver disease
:c:NASH::non-alcoholic steatohepatitis
:c1?0:PVNS::pigmented villonodular synovitis
:c1?0:PVR::post-void residual
:*c:CCC::Community Care consult result note from Vista Imaging scan lookup.
:c1?0:recnet::recent
:c1?0:reved::Reviewed order check, did not find grounds for adjustment or discontinuation.
    :c1?0:right::RIGHT-RIGHT
:c1?0:RTC::return to clinic
:c1?0:s/p::after
:c1?0:SCC::squamous cell carcinoma
:c1?0:SCCa::squamous cell cancer
:c1?0:SDAT:::senile dementia of the Alzheimer's type
:c1?0:SebDerm::seborrheic dermatitis
:c1?0:SI/HI::suicidal or homicidal intent expressed or inferred
:c1?0:SIADH::syndrome of inappropriate antidiuretic hormone secretion (SIADH)
:c1?0:SK::seborrheic keratosis
:c1?0:SLE::lupus (systemic lupus erythematosus)
:c1?0:SPEP::serum protein electrophoresis
:c1?0:SQ::subcutaneous
:c1?0:SSA::sulfasalazine
:c1?0:SSS::sick sinus syndrome
:c1?0:TG::triglycerides
:c1?0:TID::three times a day
:c1?0:TIW::three times weekly
:c1?0:tx::treatment
:c1?0:U.::unit
:c1?0:UPEP::urine protein electrophoresis
:c1?0:UTI::urinary tract infection
:c1?0:VZV::varicella/zoster virus
:c1?0:W/O::without
:c1?0:WNL::within normal limits
:c1?0:WRI::War Related Illness and Injury Study Center (WRIISC), VA Palo Alto Health Care System
:c1?0:�g::micrograms
:c1?1:RCC::renal cell carcinoma
:c2?0:RLS::restless leg syndrome
:*c:DNKA::did not keep appointment
:*c:LWOBS::left without being seen
:Cc1?0:SHTN::isolated systolic hypertension
:zc?0:DAPT::dual antiplatelet therapy
:zc?0:DUAL::Patient has dual care with VA as secondary care provider
:$c:C'AD::CAD
:$c:A'ICD::AICD
:c1?0:B'CC::BCC
:c1?0:B'ID::BID
:c1?0:B'LE::BLE
:c1?0:B'rCa::BrCa
:c1?0:c'/w::c/w
:c1?0:C'FS::CFS
:c1?0:C'MT::CMT
:c1?0:C'SI::CSI
:c1?0:D'/C::D/C
:c1?0:D'icta::Dicta
:c1?0:D'MII::DMII
:c1?0:D'UAL::DUAL
:c1?0:D'VT::DVT
:c1?0:E'AM::EAM
:c1?0:F'2F::F2F
:c1?0:f'unciton::funciton
:c1?0:H'EENT::HEENT
:c1?0:H'S::HS
:c1?0:H'TN::HTN
:c1?0:I'CMO::ICMO
:c1?0:I'U::IU
:c1?0:I'U::IU
:c1?0:I'VF::IVF
:c1?0:L'EO::LEO
:c1?0:L'FT's::LFT's
:c1?0:m'cg::mcg
:c1?0:m'l::ml
:c1?0:N'/D::N/D
:c1?0:N'AD::NAD
:c1?0:N'ED::NED
:c1?0:n'ewvisit::newvisit
:c1?0:N'ICMO::NICMO
:c1?0:N'WM::NWM
:c1?0:O'/D::O/D
:c1?0:o'pto::opto
:c1?0:O'ptu::Optu
:c1?0:O'SA::OSA
:c1?0:O'U::OU
:c1?0:p'atinet::patinet
:c1?0:P'CP::PCP
:c1?0:P'DE5::PDE5
:c1?0:P'FS::PFS
:c1?0:P'GE5::PGE5
:c1?0:P'MPw::PMPw
:c1?0:p'rescriptoin::prescriptoin
:c1?0:P'RN::PRN
:c1?0:P'rosCa::ProsCa
:c1?0:P'TSD::PTSD
:c1?0:Q'D::QD
:c1?0:Q'OD::QOD
:c1?0:r'eved::reved
:c1?0:R'HC::RHC
:c1?0:R'TC::RTC
:c1?0:S'an::San
:c1?0:S'CC::SCC
:c1?0:S'ebDerm::SebDerm
:c1?0:S'I/HI::SI/HI
:c1?0:S'K::SK
:c1?0:S'PEP::SPEP
:c1?0:S'Q::SQ
:c1?0:T'ID::TID
:c1?0:T'IW::TIW
:c1?0:U'.::U.
:c1?0:U'PEP::UPEP
:c1?0:W'NL::WNL
:^c:P'res::Pres

:*:]d:: 
    FormatTime, CurrentDateTime,, H:mm 
    SendInput %CurrentDateTime%
return