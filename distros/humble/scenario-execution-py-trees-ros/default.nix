
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-ros }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-py-trees-ros";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_py_trees_ros/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "55e0f955154f4c6f9ebfae3dbaa14952cf0885417a3d0300c3d189ec4838581c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ py-trees-ros ];

  meta = {
    description = "Fixes in py-trees-ros not yet release";
    license = with lib.licenses; [ bsd3 ];
  };
}
