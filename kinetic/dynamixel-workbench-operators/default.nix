
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, geometry-msgs, std-srvs, cmake-modules, catkin, libyamlcpp, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-operators";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_operators/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "d08cd161b668136a193c39b98ffe79c4042827f5a93d79808ce1e160b8fab9e7";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-srvs cmake-modules libyamlcpp roscpp ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-srvs cmake-modules libyamlcpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains nodes that control the Dynamixel by communicating with the server registered in the 'dynamixel_workbench_controllers' package'';
    license = with lib.licenses; [ asl20 ];
  };
}
