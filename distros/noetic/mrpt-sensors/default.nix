
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensors";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensors/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "0af2934a0866238496c073ca88e5a5e9735730bfffab2b75e5dbfdbd2c286bef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-generic-sensor mrpt-sensorlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes for various robotics sensors via mrpt-hwdrivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
