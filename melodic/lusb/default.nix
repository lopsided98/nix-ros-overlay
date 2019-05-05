
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, boost, libusb }:
buildRosPackage {
  pname = "ros-melodic-lusb";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/lusb-release/archive/release/melodic/lusb/1.1.0-0.tar.gz;
    sha256 = "a2b403bcddedcfb51d9c51f29f2364cd8a82997ba8bdb801a40e84bea748daf6";
  };

  buildInputs = [ libusb1 boost ];
  propagatedBuildInputs = [ boost libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library for interfacing to USB devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
