
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidgets";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libphidgets/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "2cd686076b1b2de0d7aca96d7f7bbcef9d05956e6758dd405f98f88e26942b2d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
