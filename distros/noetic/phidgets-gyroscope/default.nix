
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, roscpp, roslaunch, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-gyroscope";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_gyroscope/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "e31a01ab448c3ce3cfef388980b15ebe96d763e365f1add355f257dba036c15a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api roscpp roslaunch sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Driver for the Phidgets Gyroscope devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
