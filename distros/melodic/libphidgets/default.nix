
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-melodic-libphidgets";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libphidgets/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "ce2b730fbc5ff5c07f1bacc3c957ff3d9c5d1867fb27ae08cca4b8f8c7a95d22";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
