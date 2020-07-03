
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-swri-yaml-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_yaml_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "dbbcfe6df04855f34053e80278d69d57b3bc58c0744a1e986dd5ea2c900f2a82";
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
