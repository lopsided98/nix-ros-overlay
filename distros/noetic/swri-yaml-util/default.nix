
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pkg-config, roscpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-swri-yaml-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_yaml_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "36ee1dd1c39654320b1a072aaaa0e53b72916b9ade666d7249bb82ce72e69f77";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ boost roscpp yaml-cpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = "Provides wrappers around the yaml-cpp library for various utility functions
    and to abstract out the API changes made to yaml-cpp between ubuntu:precise
    and ubuntu:trusty.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
