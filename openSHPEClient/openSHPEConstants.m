//
//  openSHPEConstants.m
//  openSHPEClient
//
//  Created by Fausto Carrera on 4/2/11.
//  Copyright 2011 SHPE Inc. All rights reserved.
//
#import "openSHPEConstants.h"

/* EDIT YOUR SECRET & ACCESS KEY HERE */
NSString * const ACCESS_KEY = @"";


NSString * const SECRET_KEY = @"";

/* API Version */
NSString * const VERSION = @"v1";


/* Context Root */
NSString * const CNTXT_COMMON = @"/common/";
NSString * const CNTXT_FOUNDATION = @"/org/";
NSString * const CNTXT_USER = @"/profiles/";
NSString * const CNTXT_MEMBERSHIP = @"/profiles/";

/* Request Constants - Development, May change for production */
NSString * const SCHEME = @"https";
NSString * const HOST = @"openshpe.staging.shpe.org";
int const PORT = 443;

/* HTTP Method Constants */
NSString * const HTTP_GET = @"GET";
NSString * const HTTP_PUT = @"PUT";
NSString * const HTTP_POST = @"POST";
NSString * const HTTP_DELETE = @"DELETE";



/* V1 API Paths */

/* OpenSHPE Common API (context root: /common/) */

/* Country Service */
NSString * const PATH_LOC_CNTRY = @"/common/v1/location/countries";
NSString * const PATH_LOC_CNTRY_ID = @"/common/v1/location/country/"; //Modify to include id

/* State/Province Service */
NSString * const PATH_LOC_STATE_ID = @"/common/v1/location/country/"; //

/* College Service */
NSString * const PATH_COLL_SRCH = @"/common/v1/colleges/search";
NSString * const PATH_COLL = @"/common/v1/colleges";
NSString * const PATH_COLL_ID = @"/common/v1/location/college/";



/* School (k-12) Service */
NSString * const PATH_SCHOOL = @"/common/v1/location";
NSString * const PATH_SCHOOL_ID = @"/common/v1";
NSString * const PATH_SCHOOL_SRCH = @"/common/v1";

/* Major/Concentration Service */
NSString * const PATH_MAJOR = @"/common/v1";
NSString * const PATH_MAJOR_ID = @"/common/v1";

/* Degree Service */
NSString * const PATH_DEG = @"/common/v1";
NSString * const PATH_DEG_ID = @"/common/v1";

/* Company Service */
NSString * const PATH_COMP = @"/common/v1";
NSString * const PATH_COMP_ID = @"/common/v1";
NSString * const PATH_COMP_SRCH = @"/common/v1";

/* Job Function Service */
NSString * const PATH_JFUNC = @"/common/v1";
NSString * const PATH_JFUNC_ID = @"/common/v1";

/* Job Industry Service */
NSString * const PATH_JIND = @"/common/v1";
NSString * const PATH_JIND_ID = @"/common/v1";

/* Job Level Service */
NSString * const PATH_JLVL = @"/common/v1";
NSString * const PATH_JLVL_ID = @"/common/v1";

/* Region Service */
NSString * const PATH_REG = @"/org/v1/";
NSString * const PATH_REG_ID = @"";
NSString * const PATH_REG_CHPTR = @"";

/* Chapter Service */
NSString * const PATH_CHPTRS = @"";
NSString * const PATH_CHPTR_ID = @"";
NSString * const PATH_CHPTR_SRCH = @"";

/* Profile Service */
NSString * const PATH_PROFILE = @"";
NSString * const PATH_PROFILE_ID = @"";

/* Membership Roster Service */
NSString * const PATH_ROSTER_ID = @"";

/* Membership Type Service */
NSString * const PATH_MEMB_TYP = @"";
NSString * const PATH_MEMB_TYP_ID = @"";















