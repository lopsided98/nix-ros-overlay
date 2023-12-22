
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-analog-outputs";
  version = "1.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_analog_outputs/1.0.8-2.tar.gz";
    name = "1.0.8-2.tar.gz";
    sha256 = "9e37ee97d06875556179553175f1c809acfdba9892a24b2efd6c2f5dca00b6aa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Analog Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
