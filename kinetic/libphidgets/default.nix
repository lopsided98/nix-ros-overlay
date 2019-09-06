
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidgets";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libphidgets/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "0bb231524f5d296676eb81c554e96a691f331627f7c51adfc2fcdb83f3c43253";
  };

  buildType = "catkin";
  buildInputs = [ libusb ];
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
