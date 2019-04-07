
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-can-usb, catkin, dataspeed-can-msg-filters, dataspeed-can-tools }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-can";
  version = "1.0.12";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/kinetic/dataspeed_can/1.0.12-0.tar.gz;
    sha256 = "b50f245fa693b0da4b11cf582ad696fd653573fb2e97aeb606d06f69bb190611";
  };

  propagatedBuildInputs = [ dataspeed-can-usb dataspeed-can-msg-filters dataspeed-can-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    #license = lib.licenses.BSD;
  };
}