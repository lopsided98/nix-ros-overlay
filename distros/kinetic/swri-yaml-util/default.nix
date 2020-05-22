
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-swri-yaml-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_yaml_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "016adf7913159fa6c387cd06214df3517afd1a52adb92446fe78374989e509a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost libyamlcpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
