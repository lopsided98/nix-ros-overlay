
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-ulc-msgs, geometry-msgs, nodelet, roscpp, roslib, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-ulc-can";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/kinetic/dataspeed_ulc_can/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "a1bfa822aab424089b6ef82626459c12661459233918eebc87935eb4707794d9";
  };

  buildType = "catkin";
  checkInputs = [ roslib rostest ];
  propagatedBuildInputs = [ can-msgs dataspeed-ulc-msgs geometry-msgs nodelet roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
