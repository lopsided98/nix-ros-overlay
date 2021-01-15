
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, geometry-msgs, image-transport, nodelet, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-stag-ros";
  version = "0.1.1-r6";

  src = fetchurl {
    url = "https://github.com/usrl-uofsc/stag_ros-release/archive/release/kinetic/stag_ros/0.1.1-6.tar.gz";
    name = "0.1.1-6.tar.gz";
    sha256 = "a6f4b692ce0f3e12d087ddb0ebac396fd6349be2d273790c3aba232c57efd528";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager cv-bridge geometry-msgs image-transport nodelet roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The stag_ros package'';
    license = with lib.licenses; [ mit ];
  };
}
