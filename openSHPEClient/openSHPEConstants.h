//
//  openSHPEConstants.h
//  openSHPEClient
//
//  Created by Fausto Carrera on 4/2/11.
//  Copyright 2011 SHPE Inc. All rights reserved.
//
extern NSString * const ACCESS_KEY;

extern NSString * const SECRET_KEY;

/* API Version */
extern NSString * const VERSION;

/* Context Root */
extern NSString * const CNTXT_COMMON;
extern NSString * const CNTXT_FOUNDATION;
extern NSString * const CNTXT_USER;
extern NSString * const CNTXT_MEMBERSHIP;


/* Request Constants */
extern NSString * const SCHEME;
extern NSString * const HOST;
extern int const PORT;

/* HTTP Method Constants */
extern NSString * const HTTP_GET;
extern NSString * const HTTP_PUT;
extern NSString * const HTTP_POST;
extern NSString * const HTTP_DELETE;



/* V1 API Paths */

/* OpenSHPE Common API (context root: /common/) */

extern NSString * const PATH_LOC_CNTRY;
extern NSString * const PATH_LOC_CNTRY_ID;
extern NSString * const PATH_LOC_STATE_ID;
extern NSString * const PATH_COLL_ID;
extern NSString * const PATH_SCHOOL;
extern NSString * const PATH_SCHOOL_ID;
extern NSString * const PATH_SCHOOL_SRCH;
extern NSString * const PATH_MAJOR;
extern NSString * const PATH_MAJOR_ID;
extern NSString * const PATH_DEG;
extern NSString * const PATH_DEG_ID;
extern NSString * const PATH_COMP;
extern NSString * const PATH_COMP_ID;
extern NSString * const PATH_COMP_SRCH;
extern NSString * const PATH_JFUNC;
extern NSString * const PATH_JFUNC_ID;
extern NSString * const PATH_JIND;
extern NSString * const PATH_JIND_ID;
extern NSString * const PATH_JLVL;
extern NSString * const PATH_JLVL_ID;
extern NSString * const PATH_REG;
extern NSString * const PATH_REG_ID;
extern NSString * const PATH_REG_CHPTR;
extern NSString * const PATH_CHPTRS;
extern NSString * const PATH_CHPTR_ID;
extern NSString * const PATH_CHPTR_SRCH;
extern NSString * const PATH_PROFILE;
extern NSString * const PATH_PROFILE_ID;
extern NSString * const PATH_ROSTER_ID;
extern NSString * const PATH_MEMB_TYP;
extern NSString * const PATH_MEMB_TYP_ID;

extern NSString * const PATH_COLL_SRCH;
extern NSString * const PATH_COLL;

typedef enum {GET = 1, PUT, POST, DELETE} HTTPMethod;

typedef enum {H = 1, M, E, K, O} SchoolType;

typedef enum {C= 1, P, J} ChapterType;
