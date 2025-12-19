
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, play-motion2, play-motion2-cli, tiago-pro-head-controller-configuration, tiago-pro-head-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-bringup";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_bringup/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "dac1adca274497c679345ce4be8b82ad904e2dbfa4ee295188a4bdbe937a7b83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ play-motion2 play-motion2-cli tiago-pro-head-controller-configuration tiago-pro-head-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro_head_bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
