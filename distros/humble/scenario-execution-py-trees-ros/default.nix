
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-ros }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-py-trees-ros";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_py_trees_ros/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "1ebb9773c4ca8343aa4d9ce7064691d5023bdffc0cefa4d32c185e93b4cfb07e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ py-trees-ros ];

  meta = {
    description = "Fixes in py-trees-ros not yet release";
    license = with lib.licenses; [ bsd3 ];
  };
}
