
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-ulc-msgs, geometry-msgs, nodelet, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-ulc-can";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/noetic/dataspeed_ulc_can/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "9ed384d5ba42a7471716ede8406852d1a3d9c4523f55ecae84e3138db42144e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslib rostest ];
  propagatedBuildInputs = [ can-msgs dataspeed-ulc-msgs geometry-msgs nodelet roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
