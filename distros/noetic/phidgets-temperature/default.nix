
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-temperature";
  version = "1.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_temperature/1.0.8-2.tar.gz";
    name = "1.0.8-2.tar.gz";
    sha256 = "2fcb7ab02afb1c7781448688d996405200e5742aff2e77ae044022117b3917b9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Temperature devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
