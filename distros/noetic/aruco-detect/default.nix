
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-depth-image-transport, compressed-image-transport, cv-bridge, dynamic-reconfigure, fiducial-msgs, image-transport, python3Packages, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, theora-image-transport, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-detect";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/noetic/aruco_detect/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "5949eaf2d974b54630da131ff5727df18d49caa8ce66de5120b33bbdf9ff8548";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-depth-image-transport compressed-image-transport cv-bridge dynamic-reconfigure fiducial-msgs image-transport python3Packages.cairosvg python3Packages.joblib roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros theora-image-transport vision-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fiducial detection based on the aruco library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
