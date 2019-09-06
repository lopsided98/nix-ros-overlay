
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, image-transport, sensor-msgs, cv-bridge, pythonPackages, fiducial-msgs, catkin, tf2-ros, roscpp, tf2, dynamic-reconfigure, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-aruco-detect";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/aruco_detect/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "4ed049a2ace10a46e759f02b41c346320e95afc213333fab7d778871caa9f4dd";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.joblib pythonPackages.cairosvg tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs ];
  propagatedBuildInputs = [ pythonPackages.joblib pythonPackages.cairosvg tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs tf2-ros tf2 visualization-msgs dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
