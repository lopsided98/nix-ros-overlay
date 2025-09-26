
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bcr-arm-description, bcr-arm-gazebo, bcr-arm-moveit-config }:
buildRosPackage {
  pname = "ros-humble-bcr-arm";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "34e5488b673fe448771254585b5a606d3c81ca6c6b8031b7945dc5d988977b9f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ bcr-arm-description bcr-arm-gazebo bcr-arm-moveit-config ];

  meta = {
    description = "Metapackage for the BCR Arm robot stack";
    license = with lib.licenses; [ asl20 ];
  };
}
