
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy, joy-teleop, pal-pro-gripper-wrapper, play-motion2, play-motion2-cli, tiago-pro-controller-configuration, tiago-pro-head-bringup, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-bringup";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_bringup/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "903a8bc37118f87c75cf33e464ab0873c260ce36809f7a6c96d60b10b9bc696f";
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
