
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ffmpeg, scenario-execution }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-x11";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_x11/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "f62742cfd19866f8cedd6220480792f41dc772faf48c772b90e02eb48100085d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ffmpeg scenario-execution ];

  meta = {
    description = "Scenario Execution library for X11";
    license = with lib.licenses; [ asl20 ];
  };
}
