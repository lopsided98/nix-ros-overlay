
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, smach, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-jazzy-executive-smach";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/jazzy/executive_smach/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "6c9bf1fb4a48c6f02593e0a0d3d41319499213a731f563214da768bb3b867899";
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
