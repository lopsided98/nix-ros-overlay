
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, boost, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-swri-yaml-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_yaml_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "cff78a8351b0062db0720cbb37d157b528a1e00a334f9b274df32bdce6e793f5";
  };

  buildType = "catkin";
  buildInputs = [ libyamlcpp boost ];
  propagatedBuildInputs = [ libyamlcpp boost ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
