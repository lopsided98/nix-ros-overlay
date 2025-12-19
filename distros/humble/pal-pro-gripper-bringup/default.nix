
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, joint-state-broadcaster, joint-trajectory-controller, pal-pro-gripper-controller-configuration, pal-pro-gripper-description }:
buildRosPackage {
  pname = "ros-humble-pal-pro-gripper-bringup";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_pro_gripper-release/archive/release/humble/pal_pro_gripper_bringup/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "11de9382f9ed72649c57ff2019f80eeb012cf2878f1211c45dd3e86aa859a2ed";
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
