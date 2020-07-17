
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-pds-msgs, message-filters, nodelet, roscpp, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds-can";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds_can/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "a3897af0aa43d63cc75702e9fdb5bd2277b9ee6ed911f585b488fbb4414bdaa6";
  };

  buildType = "catkin";
  buildInputs = [ dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-pds-msgs message-filters nodelet roscpp roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS) via CAN'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
