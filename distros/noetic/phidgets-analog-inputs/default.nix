
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-analog-inputs";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_analog_inputs/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "021b92331c7649a02e99497381e2e007c560fcd922db519c7600385530e7a9ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Analog Input devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
