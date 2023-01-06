
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-ulc-msgs, geometry-msgs, nodelet, pythonPackages, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-can";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_can/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ecf0dbd15317c3d4a2fd3dea1ac5521fa0d0f642148f1fcb0556b6cabc81ac4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  checkInputs = [ roslib rostest ];
  propagatedBuildInputs = [ can-msgs dataspeed-ulc-msgs geometry-msgs nodelet roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
