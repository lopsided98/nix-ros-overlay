
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libjpeg, libusb1, cmake, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-libuvc";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libuvc-release/archive/release/melodic/libuvc/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "06a553e6d043735a10fff606d5f71a20661fc9b6be392b69a06c35b8aca8d3f6";
  };

  buildType = "cmake";
  buildInputs = [ pkg-config libjpeg libusb1 ];
  propagatedBuildInputs = [ libusb1 libjpeg catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''USB Video Class driver library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
