
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, geometry-msgs, libyamlcpp, roscpp, sensor-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-dynamixel-workbench-operators";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/melodic/dynamixel_workbench_operators/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "3b6f638d34a57d08365ca8029049067af23b0c8cbd185762ff4c2a65e07207f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules geometry-msgs libyamlcpp roscpp sensor-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains nodes that control the Dynamixel by communicating with the server registered in the 'dynamixel_workbench_controllers' package'';
    license = with lib.licenses; [ asl20 ];
  };
}
