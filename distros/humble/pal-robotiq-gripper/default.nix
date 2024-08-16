
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pal-robotiq-controller-configuration, pal-robotiq-description, rclcpp }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-gripper";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_gripper/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "375b6c4bd92ef0be10cc221475ec9602a00c89b042b8774e6fdb8ea24f17d37a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pal-robotiq-controller-configuration pal-robotiq-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Robotiq Gripper Definition Packages";
    license = with lib.licenses; [ asl20 ];
  };
}
