
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ffmpeg, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-x11";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_x11/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ac6a3082430c6b114696ca2f86f82c722e67f14ff167d9370568310e7d88b4fa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ffmpeg scenario-execution ];

  meta = {
    description = "Scenario Execution library for X11";
    license = with lib.licenses; [ asl20 ];
  };
}
