;NCC-MERP Dangerous Abbreviations Substitution
;by Stephen A. Vaughn MD PhD
;See GitHub - SteveofCaley for Details.
;? (question mark): The hotstring will be triggered even when it is inside
;another word; that is, when the character typed immediately before it is
;alphanumeric. For example, if :?:al:c1:airline is a hotstring, typing "practical "
;would produce "practicairline ". Use ?0 to turn this option back off.
;
;C1: Do not conform to typed case. Use this option to make auto-replace hotstrings
;case insensitive and prevent them from conforming to the case of the characters
;you actually type. Case-conforming hotstrings (which are the default) produce their
;replacement text in all caps if you type the abbreviation in all caps. If you type the
;first letter in caps, the first letter of the replacement will also be capitalized (if it is a letter).
;If you type the case in any other way, the replacement is sent exactly as defined. When using the #Hotstring
;directive, C0 can be used to turn this option back off, which makes hotstrings conform again.
;
;Part I accidental use and substitution
;Exact "word" replacement conforming to case, space required afterwards
:c1:AD::right ear
:c1:AS::left ear
:c1:AU::each ear
:c1:BID::twice a day
:c1:cc::mL
:c1:HS::bedtime
:c1:IU::international unit
:c1:mcg::micrograms
:c1:MgSO4::magnesium sulphate
:c1:ml::mL
:c1:MOM::milk of magnesia
:c1:MS::? sulphate
:c1:MSO4::? sulphate
:c1:OD::right eye
:c1:OS::left eye
:c1:OU::each eye
:c1:QD::daily
:c1:QHS::bedtime
:c1:QOD::every other day
:c1:SC::subcutaneous
:c1:SQ::subcutaneous
:c1:TID::three times a day
:c1:TIW::three times weekly
:c1:U::unit(s)
:c1:ug::micrograms
; case-insensitive immediate substitution
:?0c1:U.::unit(s)
;PART II deliberate use
;If you follow the first letter of an abbreviation with single-quote, 
;it parses it literally.  Good for cases where there are
;accidental use of letter sequence.
::A'D::AD
::A'S::AS
::A'U::AU
::B'ID::BID
::c'c::cc
::H'S::HS
::I'U::IU
::m'cg::mcg
::M'gSO4::MgSO4
::m'l::ml
::M'OM::MOM
::M'S::MS
::M'SO4::MSO4
::O'D::OD
::O'S::OS
::O'U::OU
::Q'D::QD
::Q'HS::QHS
::Q'OD::QOD
::S'C::SC
::S'Q::SQ
::T'ID::TID
::T'IW::TIW
::U'::U
::u'g::ug
::U'.::U.