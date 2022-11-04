
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-sensorlib, mrpt2, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-generic-sensor";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/melodic/mrpt_generic_sensor/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "916c926cdda245d427cb9cf890177ca9d9c0db245b7aacd451c9e78777094d40";
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
