
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-ulc-msgs, geometry-msgs, nodelet, python3Packages, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-ulc-can";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/noetic/dataspeed_ulc_can/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "be30b8dd3bd2ea035d5fdd71c5dd08eca3defa87fe28f1ded0c44934c7e892f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ roslib rostest ];
  propagatedBuildInputs = [ can-msgs dataspeed-ulc-msgs geometry-msgs nodelet roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
