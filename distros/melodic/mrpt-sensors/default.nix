
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-generic-sensor, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-melodic-mrpt-sensors";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/melodic/mrpt_sensors/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "e85fc055d90365682b4d820a786ed4abb82e0e33550712670bb58de14c8ea252";
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
