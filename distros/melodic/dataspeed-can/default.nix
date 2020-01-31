
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-can-msg-filters, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "2a5a118b55ac5200022941673a73e6e58bcaae063d379377fece35ebaa9b818f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-tools dataspeed-can-usb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
