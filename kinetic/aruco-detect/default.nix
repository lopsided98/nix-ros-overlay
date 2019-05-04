
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, image-transport, sensor-msgs, cv-bridge, fiducial-msgs, catkin, tf2-ros, roscpp, tf2, dynamic-reconfigure, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-aruco-detect";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/aruco_detect/0.10.0-0.tar.gz;
    sha256 = "1625f2ff481ac9478a3a25d817cba60bc7b96db68f80f7b8386e9f77c9e8bdc8";
  };

  buildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  propagatedBuildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
