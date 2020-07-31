
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-pds-msgs, message-filters, nodelet, roscpp, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-can";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_can/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d4030fa958f78ced46d62ca11f471a888c4c30cb4415cfa1470110c3b270891c";
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
