
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, naoqi-sensors-py, rospy }:
buildRosPackage {
  pname = "ros-kinetic-romeo-sensors-py";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/romeo_sensors_py/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "fbf33f29191c5afaf2b1f177b95c1762f39031a1feab5f5881fb787a7afdb2f5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge naoqi-sensors-py rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package that adds the depth camera to Romeo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
