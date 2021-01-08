
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-dashing-libphidget22";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/libphidget22/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "54c1005187ec33ed78736b756fc9ab37ff0b8b900e99932c700a65ba89573a1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ libusb1 ];
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
