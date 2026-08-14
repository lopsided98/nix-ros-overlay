
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, geometry-msgs, joy, joy-teleop, launch-pal, play-motion2, play-motion2-cli, teleop-tools-msgs, tiago-controller-configuration, tiago-description, twist-mux, twist-mux-msgs }:
buildRosPackage {
  pname = "ros-humble-tiago-bringup";
  version = "5.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_robot-release/archive/release/humble/tiago_bringup/5.1.3-1.tar.gz";
    name = "5.1.3-1.tar.gz";
    sha256 = "b368e3532237f7722de6f7e6e668b9ede03701622e294dedac3af3a8f5ab1efe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator geometry-msgs joy joy-teleop launch-pal play-motion2 play-motion2-cli teleop-tools-msgs tiago-controller-configuration tiago-description twist-mux twist-mux-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files to upload the robot description and start the controllers";
    license = with lib.licenses; [ asl20 ];
  };
}
