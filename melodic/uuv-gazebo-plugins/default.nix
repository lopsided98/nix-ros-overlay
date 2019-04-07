
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, eigen, protobuf, rosunit }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo_plugins/0.6.10-0.tar.gz;
    sha256 = "caad77b6bbdeaffc03bce6f6ec99e8064951060ef0081694001d291f08db9a4a";
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
