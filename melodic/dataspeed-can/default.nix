
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-can-usb, catkin, dataspeed-can-msg-filters, dataspeed-can-tools }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can";
  version = "1.0.12";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/melodic/dataspeed_can/1.0.12-0.tar.gz;
    sha256 = "db45e27927b4142df69eb0748d76e39125e9c76bae491a84fc04f8aa9e7528aa";
  };

  propagatedBuildInputs = [ dataspeed-can-usb dataspeed-can-msg-filters dataspeed-can-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    #license = lib.licenses.BSD;
  };
}
