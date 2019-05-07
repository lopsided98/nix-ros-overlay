
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, tf, sensor-msgs, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-ik";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_ik/0.7.8-1.tar.gz;
    sha256 = "4b8dcde27bb0070a8a9fd5857ffbceff49516a1d1b181dfd58da0be9f595375c";
  };

  buildInputs = [ phidgets-api sensor-msgs roscpp message-generation nodelet std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ phidgets-api sensor-msgs roscpp message-runtime nodelet std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
