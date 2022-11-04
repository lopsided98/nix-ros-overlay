
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-sensorlib, mrpt2, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mrpt-generic-sensor";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_generic_sensor/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "99619824bb7ebfde60c350946ed3ec9693c59691963aa845afbe57af433dab24";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-sensorlib mrpt2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for interfacing any sensor supported by mrpt-hwdrivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
