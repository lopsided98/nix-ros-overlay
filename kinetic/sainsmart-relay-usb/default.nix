
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libftdi, roscpp, std-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-sainsmart-relay-usb";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/sainsmart_relay_usb-release/archive/release/kinetic/sainsmart_relay_usb/0.0.2-0.tar.gz;
    sha256 = "a7c45ddb079d74a3c0fb1f29cb325395b37c8d2806cd2fef178ae946e52d5420";
  };

  propagatedBuildInputs = [ std-msgs roscpp libftdi ];
  nativeBuildInputs = [ roslib std-msgs catkin roscpp libftdi ];

  meta = {
    description = ''SainSmart USB relay driver controller'';
    #license = lib.licenses.BSD;
  };
}
