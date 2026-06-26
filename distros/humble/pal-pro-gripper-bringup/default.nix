
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, pal-pro-gripper-controller-configuration, pal-pro-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-bringup";
  version = "1.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_bringup/1.12.5-1.tar.gz";
    name = "1.12.5-1.tar.gz";
    sha256 = "ced08d1d3eac4cac531839e65adf03dd7777759415dc792816908826d2f9acae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-broadcaster joint-trajectory-controller pal-pro-gripper-controller-configuration pal-pro-gripper-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
