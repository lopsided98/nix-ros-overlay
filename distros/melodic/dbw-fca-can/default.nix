
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-fca-description, dbw-fca-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-can";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_can/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "2abd13f0fc3ae8bbd9ca5f346c1b9d61f36a56fe51a1b33e8343f43b07012933";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-fca-description dbw-fca-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
