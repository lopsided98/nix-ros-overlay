
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, can-msgs, message-filters, dataspeed-can-msg-filters, roscpp, dataspeed-can-usb, rostest, dataspeed-pds-msgs, roslaunch, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-pds-can";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/kinetic/dataspeed_pds_can/1.0.2-0.tar.gz;
    sha256 = "ee8427e16bc91b2b6f739d767e473d99ec0a0d5af7b5ee827662130c7e2c7f52";
  };

  buildInputs = [ can-msgs message-filters dataspeed-can-msg-filters dataspeed-pds-msgs nodelet roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ can-msgs message-filters roscpp dataspeed-can-usb dataspeed-pds-msgs roslaunch nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS) via CAN'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
