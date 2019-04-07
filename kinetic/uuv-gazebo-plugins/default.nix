
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, eigen, protobuf, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_plugins/0.6.10-0.tar.gz;
    sha256 = "1dbb7640a02b805a4ea1b2a107b2025e22f30dbc66178f6ffc8f78b865d0dace";
  };

  buildInputs = [ protobuf eigen gazebo-dev ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ protobuf eigen gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's Gazebo plugins for simulation of hydrodynamic and hydrostatic
    forces, and underwater actuators (e.g. thrusters and fins).'';
    #license = lib.licenses.Apache-2.0;
  };
}
