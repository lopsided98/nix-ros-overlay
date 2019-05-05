
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, tf, sensor-msgs, catkin, message-generation, message-runtime, nodelet, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-phidgets-ik";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_ik/0.7.7-0.tar.gz;
    sha256 = "1da8539e391c6fd73ed030501b1d7a3070d61281c492183f1286ba1c53e40dbc";
  };

  buildInputs = [ phidgets-api sensor-msgs roscpp message-generation nodelet std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ phidgets-api sensor-msgs roscpp message-runtime nodelet std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
