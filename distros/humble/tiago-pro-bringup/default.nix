
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, joy-linux, joy-teleop, pal-pro-gripper-wrapper, play-motion2, play-motion2-cli, tiago-pro-controller-configuration, tiago-pro-head-bringup, twist-mux }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-bringup";
  version = "1.32.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_bringup/1.32.1-1.tar.gz";
    name = "1.32.1-1.tar.gz";
    sha256 = "97551307ddaa8e84bd38f8fed21d125158e256bdaa16471d9bd53027d9272b06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator joy-linux joy-teleop pal-pro-gripper-wrapper play-motion2 play-motion2-cli tiago-pro-controller-configuration tiago-pro-head-bringup twist-mux ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the TIAGo pro robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
