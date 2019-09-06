
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-ulc-msgs, catkin, can-msgs, rostest, roslib, nodelet, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-ulc-can";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/kinetic/dataspeed_ulc_can/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "943951631781b6f9b57d100ce3d4013bae002620633467ec8558d22b62e9586a";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-ulc-msgs can-msgs nodelet rospy std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest roslib ];
  propagatedBuildInputs = [ dataspeed-ulc-msgs can-msgs roscpp rospy std-msgs nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
