
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, catkin, dataspeed-pds-msgs, dataspeed-can-usb, nodelet, roscpp, can-msgs, roslaunch, rostest, dataspeed-can-msg-filters }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-can";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_can/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "9ac85ae64a11d73e1049f6971720e1dddfe9af4548df5ed6cd083d855d60dbd4";
  };

  buildType = "catkin";
  buildInputs = [ message-filters dataspeed-pds-msgs nodelet roscpp can-msgs dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ message-filters dataspeed-pds-msgs dataspeed-can-usb nodelet roscpp can-msgs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS) via CAN'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
