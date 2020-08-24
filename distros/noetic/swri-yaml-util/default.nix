
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-swri-yaml-util";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_yaml_util/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "b51c651773bd1625600bee4cc3e647f64b5a11bba6d31625f397ef92b56cd7c0";
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
