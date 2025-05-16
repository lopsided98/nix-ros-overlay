
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidget22";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/libphidget22/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "562d132dee7ae8648e50d330762670dc54049bdf8ea3b6dc4c4f3dffa1bfc114";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package wraps the libphidget22 to use it as a ROS dependency";
    license = with lib.licenses; [ "LGPL" ];
  };
}
