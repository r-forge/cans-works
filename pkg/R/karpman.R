karpman <-
function(cans) {

# recode and deidentify CANS data for use in Hannah Karpman's analytic work
# J. Simons jack.simons@state.ma.us
# Wednesday July 06, 2011; 13:29:02

# assumes a 254 column CANS dataframe with standard order of variables

# change 3 fields from factor to date
{
#	date of birth
	cans[, 10] <- as.Date(cans[, 10], format="%Y-%m-%d")
#	date of assessment
	cans[, 32] <- as.Date(cans[, 32], format="%m/%d/%Y")	
#	status date
	cans[, 235] <- as.Date(cans[, 235], format="%m/%d/%Y")
	}

# some of the following replacement of fields with blanks (NA) is redundent, but that's OK
{# blank 24 identifier fields:
{	
	# 3		CA first name
	# 4 	CA last name
	# 7		first name
	# 8		last name
	# 9		middle initial
	# 10	DOB
	# 17	age month
	# 21	Clients MassHealth Current Assignment Plan primary code
	# 22	Clients MassHealth Current Assignment Plan primary description
	# 23	Clients MassHealth Current Assignment Plan secondary code
	# 24	Clients MassHealth Current Assignment Plan secondary description
	# 25	SSN
	# 26	assessor phone
	# 27	assessor ext
	# 28	National Provider Identifier (NPI)
	# 238	Data Entry Operator name-1
	# 239	Data Entry Operator name-2
	# 240	Data Entry Operator name-3
	# 241	Organization Street
	# 242	Organization City
	# 243	Organization State
	# 244	Organization Zip
	# 245	Organization Parent LegalName
	# 246	Organization Parent ShortName
	identifier.fields <- c(3, 4, 7:10, 17, 21:28, 238:246)
	cans[, identifier.fields] <- NA
	}
	
# blank 22 free-text fields
{
	# 20	living situation other
	# 30	place of assessment other
	# 65	5OVER: Life Domain Functioning Text
	# 76	5OVER: Child Behavioral/Emotional Needs Text
	# 89	5OVER: Child Risk Behaviors Text
	# 98	5OVER: Dx_AxisIII_1
	# 99	5OVER: Dx_AxisIII_2
	# 100	5OVER: Dx_AxisIII_3
	# 110	5OVER: Dx Text
	# 120	5OVER: Child Strengths Text
	# 127	5OVER: Acculturation Text
	# 135	5OVER: Transition to Adulthood Text
	# 136	5OVER: Caregiver Resources And Needs: Caregiver Name
	# 150	5OVER: Caregiver Resources And Needs Text
	# 160	UNDER5: Child Behavioral/ Emotional Needs Text
	# 165	UNDER5: Child Risk Factors and Behaviors Text
	# 174	UNDER5:	Dx_AxisII_1
	# 175	UNDER5:	Dx_AxisII_2
	# 176	UNDER5:	Dx_AxisII_3
	# 186	UNDER5: Dx Text
	# 203	UNDER5: Life Domain Functioning Text
	# 212	UNDER5: Child Strengths Text
	# 219	UNDER5: Acculturation Text
	# 220	UNDER5: Caregiver Resources And Needs: Caregiver Name
	# 233	UNDER5: Caregiver Resources And Needs Text
	# 234	Summary Text
	# 237  Incomplete but Final reason
	# 253	Disputed notes
	freetext.fields <- c(20, 30, 65, 76, 89, 98:100, 110, 120, 127, 135, 136, 150, 160, 165, 174:176, 186, 203, 212, 219, 220, 233, 234, 237, 253)
	cans[, freetext.fields] <- NA
	}

# blank 83 fields specific to ages 0 through 4 (fields 151 through 233
{
	birth.4.fields <- 151:233
	cans[, birth.4.fields] <- NA
	}

# blank 2 unneeded fields
{
	# 1		CANS counter
	# 235	Status Date
	unneeded.fields <- c(1, 235)
	cans[, unneeded.fields] <- NA
	}
}
# print(strx(cans))
# recode x fields with unique identifier and remove original field
{
	# MHID, column 2
	cans[, 2] <- replace_factor_with_random_id(cans, 2)
	# provider, column 5
	cans[, 5] <- replace_factor_with_random_id(cans, 5)
	# zipcode, column18, replace with first 3 digits of zip code
	
	# date of assessment, column 32
	cans[, 32] <- days_since_first_assessment(cans)
#  Axis I FvUp, columns 90-92
#  Axis II FvUp, columns 94-96
#  Axis I FrUnd, columns 166-168
#  Axis II FrUnd, columns 170-172
}

return(cans)
}

