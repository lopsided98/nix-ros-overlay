
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-py-trees-ros";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_py_trees_ros/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "9716904cedab67d9839c589f409171df0686a64edd8f0619e4e94b0eb628fd70";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ py-trees-ros ];

  meta = {
    description = "Fixes in py-trees-ros not yet release";
    license = with lib.licenses; [ bsd3 ];
  };
}
