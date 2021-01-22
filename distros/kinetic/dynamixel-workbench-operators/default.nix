
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-workbench-operators";
  version = "2.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/dynamixel_workbench_operators/2.2.0-0.tar.gz";
    name = "2.2.0-0.tar.gz";
    sha256 = "5154d3997cb68d4547afb36a137dba26f4bb62a8a7ee2d7467224fee7ab84f19";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules geometry-msgs libyamlcpp roscpp sensor-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains nodes that control the Dynamixel by communicating with the server registered in the 'dynamixel_workbench_controllers' package'';
    license = with lib.licenses; [ asl20 ];
  };
}
