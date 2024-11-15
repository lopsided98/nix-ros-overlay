
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-ros }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-py-trees-ros";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_py_trees_ros/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "d9ed8b8dfc8363657afd09173339e4edb06ea3b8e70a47732d39522b64b1a8ff";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ py-trees-ros ];

  meta = {
    description = "Fixes in py-trees-ros not yet release";
    license = with lib.licenses; [ bsd3 ];
  };
}
