
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-gyroscope";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_gyroscope/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "77a1630f1467cee9bf96e8b831c4e12e8d95f710d0edec78c1454ae3dd721c8e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
