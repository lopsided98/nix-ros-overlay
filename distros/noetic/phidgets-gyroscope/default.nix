
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-gyroscope";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_gyroscope/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "de20c50a229500ef5fa8c250825aafb248479e020a596cf686186096fff714c7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
