
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidget22";
  version = "1.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/libphidget22/1.0.8-2.tar.gz";
    name = "1.0.8-2.tar.gz";
    sha256 = "6f7f6dfe7c964dcc87434885850967cf04e0f73efbb9dd1aed98b3f7cf1c353a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidget22 to use it as a ROS dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
