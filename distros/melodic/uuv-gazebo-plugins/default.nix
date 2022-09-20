
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-dev, protobuf, rosunit }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "ba78a31401069832ef24a64776753b3e510db70e7c95761f2556f8ac3e9b6d93";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen gazebo-dev protobuf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's Gazebo plugins for simulation of hydrodynamic and hydrostatic
    forces, and underwater actuators (e.g. thrusters and fins).'';
    license = with lib.licenses; [ asl20 ];
  };
}
