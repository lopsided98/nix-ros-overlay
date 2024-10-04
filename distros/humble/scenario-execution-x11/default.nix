
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ffmpeg, scenario-execution }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-x11";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_x11/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d1da4bf798ebbf2fef5eeb302965d75787c62b3522e76bade684a7255581925a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ffmpeg scenario-execution ];

  meta = {
    description = "Scenario Execution library for X11";
    license = with lib.licenses; [ asl20 ];
  };
}
