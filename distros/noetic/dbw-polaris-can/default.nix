
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-polaris-description, dbw-polaris-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-can";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_can/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "42125be547585ebe2cfd69f5cb5808ba8f9da93c6c1cb1ed811dd61ff2f7f707";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-polaris-description dbw-polaris-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
