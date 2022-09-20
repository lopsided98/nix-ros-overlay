
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, fiducial-msgs, image-transport, pythonPackages, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-aruco-detect";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/melodic/aruco_detect/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "850fff672ee87b14935c5dc431a7a77ce2e5cf8cf71e7f8dc326d224862a0abe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure fiducial-msgs image-transport pythonPackages.cairosvg pythonPackages.joblib roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
