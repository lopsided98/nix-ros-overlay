
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, roscpp, sensor-msgs, std-srvs, trajectory-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-dynamixel-workbench-operators";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/noetic/dynamixel_workbench_operators/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7a36a609437d621c5194faf13c738bad9d30721ca9d835d6be4f70b5e1a8e0fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules geometry-msgs roscpp sensor-msgs std-srvs trajectory-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains nodes that control the Dynamixel by communicating with the server registered in the 'dynamixel_workbench_controllers' package'';
    license = with lib.licenses; [ asl20 ];
  };
}
