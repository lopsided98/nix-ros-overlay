
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor, mrpt-sensorlib, mrpt-sensors-examples }:
buildRosPackage {
  pname = "ros-noetic-mrpt-sensors";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_sensors/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "037baa2964f8248a214a3115d39a7bd3678329441b333d43dffbbd2869b838df";
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
