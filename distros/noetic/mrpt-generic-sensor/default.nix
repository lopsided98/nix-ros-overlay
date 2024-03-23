
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, mrpt-sensorlib, mrpt2, ros-environment, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mrpt-generic-sensor";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_sensors-release/archive/release/noetic/mrpt_generic_sensor/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "147a9d09f9351cd8e64c80c6e3270cb38b1cb6f8fcb3a378a765e2aed597b2f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake ros-environment ];
  propagatedBuildInputs = [ mrpt-sensorlib mrpt2 roscpp ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = "ROS node for interfacing any sensor supported by mrpt-hwdrivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
