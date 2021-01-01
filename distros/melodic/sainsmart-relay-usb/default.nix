
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libftdi, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-sainsmart-relay-usb";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/sainsmart_relay_usb-release/archive/release/melodic/sainsmart_relay_usb/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "73e7449cf27e9caa518695cb6996d8909422ae70540708e07580a666560ddd66";
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
