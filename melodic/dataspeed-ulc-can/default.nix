
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dataspeed-ulc-msgs, std-msgs, catkin, roslib, nodelet, roscpp, can-msgs, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-can";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_can/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "df805e7fffff44a12238fba6da27ca114035d1216e8e7e718beefec2475ac44b";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs dataspeed-ulc-msgs nodelet roscpp can-msgs rospy ];
  checkInputs = [ roslib rostest ];
  propagatedBuildInputs = [ geometry-msgs dataspeed-ulc-msgs std-msgs nodelet roscpp can-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
