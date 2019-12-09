
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fiducial-msgs, sensor-msgs, dynamic-reconfigure, pythonPackages, catkin, tf2, image-transport, tf2-geometry-msgs, cv-bridge, visualization-msgs, roscpp, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-aruco-detect";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/aruco_detect/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "4ed049a2ace10a46e759f02b41c346320e95afc213333fab7d778871caa9f4dd";
  };

  buildType = "catkin";
  buildInputs = [ fiducial-msgs sensor-msgs pythonPackages.cairosvg dynamic-reconfigure tf2 pythonPackages.joblib image-transport tf2-geometry-msgs cv-bridge visualization-msgs roscpp tf2-ros ];
  propagatedBuildInputs = [ fiducial-msgs sensor-msgs dynamic-reconfigure pythonPackages.cairosvg roscpp pythonPackages.joblib image-transport tf2-geometry-msgs cv-bridge visualization-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
