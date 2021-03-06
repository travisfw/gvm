#!/bin/bash

#
#   Copyright 2012 Marco Vermeulen
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#

function __gvmtool_offline {
	if [[ "$1" == "enable" ]]; then
		touch "${GVM_DIR}/GVM_FORCE_OFFLINE" || return 1
		GVM_FORCE_OFFLINE="true"
		echo "Forced offline mode enabled."
	fi
	if [[ "$1" == "disable" ]]; then
		rm -f "${GVM_DIR}/GVM_FORCE_OFFLINE" || return 1
		GVM_FORCE_OFFLINE="false"
		GVM_ONLINE="true"
		echo "Online mode re-enabled!"
	fi
}