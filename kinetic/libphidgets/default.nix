
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidgets";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libphidgets/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "85cd0289c7064fbc8f17cac73444bf084d83b04823ca00141062b02c37542a3f";
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
