
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-rolling-executive-smach";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/executive_smach/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "6190d3e15e52d523c5de3e3544791d92c8cd713cd2a4f086911aa3567e8f7b5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ smach smach-msgs smach-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This metapackage depends on the SMACH library and ROS SMACH integration
    packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
