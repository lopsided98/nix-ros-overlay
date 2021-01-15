
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libftdi, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-sainsmart-relay-usb";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/sainsmart_relay_usb-release/archive/release/noetic/sainsmart_relay_usb/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "f13e0ed3e0dfd8522c79674412557adb424f9009dd6e6471606988ede73c0136";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libftdi roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SainSmart USB relay driver controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
