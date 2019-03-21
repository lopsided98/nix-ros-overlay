
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, boost, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-swri-yaml-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_yaml_util/2.8.0-0.tar.gz;
    sha256 = "a3aa3f99dd054c98671cd4712364c570747729f7dfef053885370e48c1ad4980";
  };

  propagatedBuildInputs = [ libyamlcpp boost ];
  nativeBuildInputs = [ libyamlcpp catkin boost pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    #license = lib.licenses.BSD;
  };
}
