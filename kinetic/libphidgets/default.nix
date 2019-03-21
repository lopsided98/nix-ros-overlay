
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidgets";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libphidgets/0.6.12-0.tar.gz;
    sha256 = "745d5814394253e3d5438dc2c1447d31cca5f5cc860c9d6eb2341bcd613d4b16";
  };

  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin libusb ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    #license = lib.licenses.LGPL;
  };
}
