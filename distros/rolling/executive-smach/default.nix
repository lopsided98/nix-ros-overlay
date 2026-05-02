
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-rolling-executive-smach";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/executive_smach/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "e087bc0e86d32887f833582e4b231baf117a0e69624239a430936ff7469fbdfb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This metapackage depends on the SMACH library and ROS SMACH integration
    packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
