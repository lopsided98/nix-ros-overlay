
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libftdi, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sainsmart-relay-usb";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/sainsmart_relay_usb-release/archive/release/kinetic/sainsmart_relay_usb/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "a7c45ddb079d74a3c0fb1f29cb325395b37c8d2806cd2fef178ae946e52d5420";
  };

  buildType = "catkin";
  buildInputs = [ roslib ];
  propagatedBuildInputs = [ libftdi roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SainSmart USB relay driver controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
