
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ffmpeg, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-x11";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_x11/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "2ae3a28637b3ac702d668c4d730b7310e4d03ebb3a9957b715eb43701c1888be";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ffmpeg scenario-execution ];

  meta = {
    description = "Scenario Execution library for X11";
    license = with lib.licenses; [ asl20 ];
  };
}
