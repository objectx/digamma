// Copyright (c) 2004-2020 Yoshikatsu Fujita / LittleWing Company Limited.
// See LICENSE file for terms and conditions of use.

#ifndef BAG_H_INCLUDED
#define BAG_H_INCLUDED

#include "core.h"
#include "object.h"

sharedbag_slot_t* lookup_sharedbag(scm_sharedbag_t bag, const char* key, int len);

#endif
