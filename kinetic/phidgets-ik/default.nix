
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, tf, catkin, phidgets-api, nodelet, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-ik";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_ik/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "7fdf740d366819c5058e0b1257e1e8758b3a8df9dfdcedf0d2d00a392586cae4";
  };

  buildType = "catkin";
  buildInputs = [ message-generation sensor-msgs geometry-msgs std-msgs tf nodelet roscpp phidgets-api ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs message-runtime std-msgs tf nodelet roscpp phidgets-api ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
