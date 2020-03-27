
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-swri-yaml-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_yaml_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "98c1e7358d7563be5409d7e1faa4143ae81acf87c1819c400e3dd4ae4e723073";
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
