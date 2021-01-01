
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-noetic-libphidgets";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libphidgets/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "29fbbbf43e53763c863dedcec0390465376f129591ec58870312be669e462462";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
