
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-polaris-description, dbw-polaris-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, socketcan-bridge, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-polaris-can";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/melodic/dbw_polaris_can/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e01e578a29021f2da9b0754de9d4b2e76ba1e118100ac53aa387c7050e170193";
  };

  buildType = "catkin";
  buildInputs = [ catkin dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-polaris-description dbw-polaris-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs socketcan-bridge std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
