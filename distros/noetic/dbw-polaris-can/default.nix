
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-polaris-description, dbw-polaris-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, socketcan-bridge, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-can";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_can/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2515778c68b8f9cb2153e1f886b0d6d5c7b97355ac0acafadab0bcaea7aa53ee";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-polaris-description dbw-polaris-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs socketcan-bridge std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
