
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bcr-arm-description, bcr-arm-gazebo, bcr-arm-moveit-config }:
buildRosPackage {
  pname = "ros-humble-bcr-arm-ros2";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm_ros2/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ef616642fe29afe9b5b0d26e035cb7319c202f1edba92e002bea4bdec3b4e508";
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
