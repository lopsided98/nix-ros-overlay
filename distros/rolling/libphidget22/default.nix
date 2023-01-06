
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1 }:
buildRosPackage {
  pname = "ros-rolling-libphidget22";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/libphidget22/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "3bed8ddd7ec477e8c4d5360053f203ab932081e64c48bc2470a2e462ac5eff4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
