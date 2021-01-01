
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, fiducial-msgs, image-transport, pythonPackages, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-aruco-detect";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/aruco_detect/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "4ed049a2ace10a46e759f02b41c346320e95afc213333fab7d778871caa9f4dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure fiducial-msgs image-transport pythonPackages.cairosvg pythonPackages.joblib roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
