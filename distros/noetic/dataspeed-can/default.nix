
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-can-msg-filters, dataspeed-can-tools, dataspeed-can-usb }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-can";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/noetic/dataspeed_can/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "38e1ac834ec961a5b75345f4cfd413a1279ca1d89d09adeb00794e270d771e54";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dataspeed-can-msg-filters dataspeed-can-tools dataspeed-can-usb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CAN bus tools using Dataspeed hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
