
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-ulc-msgs, catkin, can-msgs, rostest, roslib, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-can";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_can/0.0.3-0.tar.gz;
    sha256 = "85673897676564ab1aea0ffe505a10469008d058ca28ce81bce53b50b4641813";
  };

  checkInputs = [ rostest roslib ];
  propagatedBuildInputs = [ nodelet dataspeed-ulc-msgs std-msgs can-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ nodelet dataspeed-ulc-msgs std-msgs can-msgs catkin roscpp geometry-msgs ];

  meta = {
    description = ''Package to translate ROS messages to and from CAN messages to interact with the Universal Lat/Lon Controller (ULC) firmware'';
    #license = lib.licenses.BSD;
  };
}
