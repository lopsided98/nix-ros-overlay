
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-can-msg-filters, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "d1b1c7623f4db15399b3f03f2ca32d14db310a088cc9bc21e08f32fba7cb218c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-tools dataspeed-can-usb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
