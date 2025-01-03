
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidgets";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/noetic/libphidgets/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "8219c6374819b7f9d667689213ce376f72c107e6ecf948fd039c593c99e8f86e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package wraps the libphidgets to use it as a ros dependency";
    license = with lib.licenses; [ "LGPL" ];
  };
}
