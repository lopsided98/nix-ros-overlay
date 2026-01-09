
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, bcr-arm-description, bcr-arm-gazebo, bcr-arm-moveit-config }:
buildRosPackage {
  pname = "ros-jazzy-bcr-arm-ros2";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/jazzy/bcr_arm_ros2/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a9dc640b8de1dcfcdca7f8fe35cbc734ef0bc6ebc59ba5eb59f917824be7a7f7";
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
