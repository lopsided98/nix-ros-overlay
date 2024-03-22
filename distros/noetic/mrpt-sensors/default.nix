
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor, mrpt-sensorlib, mrpt-sensors-examples }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensors";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensors/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "00186fb0ac9842cc130596c19381586fc3aada1d162b44c0222ba25a4103d4d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-generic-sensor mrpt-sensorlib mrpt-sensors-examples ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes for various robotics sensors via mrpt-hwdrivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
