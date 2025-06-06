
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-kilted-executive-smach";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/kilted/executive_smach/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "4f256a54f79ebbaef15ad5b9c08781847a11ea808d1205b5d48fb232bb9c164d";
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
