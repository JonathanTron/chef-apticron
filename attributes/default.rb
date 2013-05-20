#
# Cookbook Name:: apticron
# Attributes:: default
#
# Copyright 2013, Openhood S.E.N.C
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["apticron"]["config"]["email"] = ["root"]
default["apticron"]["config"]["diff_only"] = "0"
default["apticron"]["config"]["listchanges_profile"] = nil
default["apticron"]["config"]["system"] = nil
default["apticron"]["config"]["ipaddressnum"] = nil
default["apticron"]["config"]["ipaddresses"] = nil
default["apticron"]["config"]["notify_holds"] = "1"
default["apticron"]["config"]["notify_new"] = "1"
default["apticron"]["config"]["custom_subject"] = nil
default["apticron"]["config"]["custom_from"] = nil
