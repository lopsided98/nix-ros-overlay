
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pkg-config, roscpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-swri-yaml-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_yaml_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "f5c313869382f93b4beb71385bc63d0ac04ae1bd545bd67c1c02015bededc1a7";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ boost roscpp yaml-cpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
