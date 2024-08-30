
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-mola-common";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mola_common-release/archive/release/noetic/mola_common/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "6505e58ca6c6d41575f9f1d56a4c8fe8744e213a96b4b9c7d5c5a1bc8af0f824";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "Common CMake scripts to all MOLA modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
