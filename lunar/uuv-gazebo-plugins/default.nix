
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, eigen, protobuf, rosunit }:
buildRosPackage {
  pname = "ros-lunar-uuv-gazebo-plugins";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_gazebo_plugins/0.6.12-0.tar.gz;
    sha256 = "437ab5b3234512fcb4c0f4e61bb725fc16b0511f9c3267a8e687d815c30cd1d0";
  };

  buildInputs = [ protobuf eigen gazebo-dev ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ protobuf eigen gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's Gazebo plugins for simulation of hydrodynamic and hydrostatic
    forces, and underwater actuators (e.g. thrusters and fins).'';
    license = with lib.licenses; [ asl20 ];
  };
}
