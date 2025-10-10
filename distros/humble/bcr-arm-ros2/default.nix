
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bcr-arm-description, bcr-arm-gazebo, bcr-arm-moveit-config }:
buildRosPackage {
  pname = "ros-humble-bcr-arm-ros2";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm_ros2/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "5aced0418bbae4d6c8a4fb00b175f8c09be8e018ce477d842043cbb5c7a70610";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bcr-arm-description bcr-arm-gazebo bcr-arm-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description (metapackage)";
    license = with lib.licenses; [ asl20 ];
  };
}
