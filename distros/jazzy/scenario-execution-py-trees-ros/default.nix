
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-py-trees-ros";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_py_trees_ros/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "ae97e5ec97a96360a0951f40cb9f3e9eda5aa7d8177bcba532416df9bcf29fed";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ py-trees-ros ];

  meta = {
    description = "Fixes in py-trees-ros not yet release";
    license = with lib.licenses; [ bsd3 ];
  };
}
