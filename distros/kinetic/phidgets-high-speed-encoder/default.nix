
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21, message-generation, message-runtime, phidgets-api, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-high-speed-encoder";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_high_speed_encoder/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4b312550ad9a97d33c8ebee17973fcfb6d93c1aebe8aa557ab5729c7d41e3768";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ libphidget21 message-runtime phidgets-api roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
