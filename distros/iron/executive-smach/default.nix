
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-iron-executive-smach";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/iron/executive_smach/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "53be40cbe0c92234be7d271daeb2a49384defdc0ea648c103801aecd2d001bb2";
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
