
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-mkz-description, dbw-mkz-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, socketcan-bridge, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-can";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_can/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "5da58e3e59545bcda58119cf7a6590a5e9425f970a7e5e2e43a68379f367c205";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-mkz-description dbw-mkz-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs socketcan-bridge std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
