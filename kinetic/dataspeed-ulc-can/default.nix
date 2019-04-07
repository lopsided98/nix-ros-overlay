
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-ulc-msgs, catkin, can-msgs, rostest, roslib, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-ulc-can";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/kinetic/dataspeed_ulc_can/0.0.3-0.tar.gz;
    sha256 = "225f1f32ba0e5cd74a7db6729e5048b8ae40a5be9670fe65bc577bf2883a610c";
  };

  buildInputs = [ nodelet dataspeed-ulc-msgs std-msgs can-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest roslib ];
  propagatedBuildInputs = [ nodelet dataspeed-ulc-msgs std-msgs can-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    #license = lib.licenses.BSD;
  };
}
