
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, eigen, protobuf, rosunit }:
buildRosPackage {
  pname = "ros-lunar-uuv-gazebo-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_gazebo_plugins/0.6.10-0.tar.gz;
    sha256 = "8ebd4b5cc095cdb7838358a5d45e648a06b47bb3ac296876d221e194c74179a3";
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
