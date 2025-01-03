
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ffmpeg, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-x11";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_x11/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "40c5b05e7104a9c96dd7418ba95f3880b6c59887b7bda816559d9654ef19797d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ffmpeg scenario-execution ];

  meta = {
    description = "Scenario Execution library for X11";
    license = with lib.licenses; [ asl20 ];
  };
}
