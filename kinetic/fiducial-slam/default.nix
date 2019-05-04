
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, image-transport, sensor-msgs, cv-bridge, fiducial-msgs, catkin, tf2-ros, roscpp, tf2, dynamic-reconfigure, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-fiducial-slam";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducial_slam/0.10.0-0.tar.gz;
    sha256 = "180e3be753d8292111258e893d616478277b2befd9903c376539c09b1e7764c6";
  };

  buildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  propagatedBuildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node to build a 3D map of fiducials and estimate robot pose from fiducial transforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
