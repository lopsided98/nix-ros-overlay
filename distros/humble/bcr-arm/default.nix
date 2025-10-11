
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bcr-arm-description, bcr-arm-gazebo, bcr-arm-moveit-config }:
buildRosPackage {
  pname = "ros-humble-bcr-arm";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8e8599ab2ed84d1881a721ec4f3450caf0d430803b4cb67976a6c83a2dcae616";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bcr-arm-description bcr-arm-gazebo bcr-arm-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for the BCR Arm robot stack";
    license = with lib.licenses; [ asl20 ];
  };
}
