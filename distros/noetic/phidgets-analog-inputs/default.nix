
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-analog-inputs";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_analog_inputs/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "6d587f979b0ed686c13f6f99f21ccee96ab24680ac35d129592f8e598578d918";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Analog Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
