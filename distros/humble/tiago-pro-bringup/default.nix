
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy, joy-teleop, pal-pro-gripper-wrapper, play-motion2, play-motion2-cli, tiago-pro-controller-configuration, tiago-pro-head-bringup, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-bringup";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_bringup/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "ecebd5eec3b5817d9faa27b97cc04074a1599875f04f14f30e828d5df3189f5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator joy joy-teleop pal-pro-gripper-wrapper play-motion2 play-motion2-cli tiago-pro-controller-configuration tiago-pro-head-bringup twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the TIAGo pro robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
