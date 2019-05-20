
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-ulc-msgs, catkin, can-msgs, rostest, roslib, nodelet, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-can";
  version = "0.0.4-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_can/0.0.4-1.tar.gz;
    sha256 = "c4fc0d6aba845473c5420ee7e3625a5a8fbcdc13925ef38e17a2153c3e427dd0";
  };

  buildInputs = [ dataspeed-ulc-msgs can-msgs nodelet rospy std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest roslib ];
  propagatedBuildInputs = [ dataspeed-ulc-msgs can-msgs nodelet rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
