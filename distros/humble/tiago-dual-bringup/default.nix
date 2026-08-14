
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, geometry-msgs, joy, joy-teleop, launch-pal, play-motion2, play-motion2-cli, teleop-tools-msgs, tiago-dual-controller-configuration, tiago-dual-description, twist-mux, twist-mux-msgs }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-bringup";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_robot-release/archive/release/humble/tiago_dual_bringup/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "6375d3a14b131ff281d8bc8de3420e99074787d620c66f00979172cc20db0ac8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator geometry-msgs joy joy-teleop launch-pal play-motion2 play-motion2-cli teleop-tools-msgs tiago-dual-controller-configuration tiago-dual-description twist-mux twist-mux-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the TIAGo Dual robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
