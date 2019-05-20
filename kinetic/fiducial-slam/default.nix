
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, image-transport, sensor-msgs, cv-bridge, fiducial-msgs, catkin, tf2-ros, roscpp, tf2, dynamic-reconfigure, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fiducial-slam";
  version = "0.11.0-r1";

  src = fetchurl {
    url = https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducial_slam/0.11.0-1.tar.gz;
    sha256 = "3cf7832b9de3272ed0fc6e24979219866a7678a23f3404f5da39f97ab6519f27";
  };

  buildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs ];
  propagatedBuildInputs = [ tf2-geometry-msgs image-transport sensor-msgs cv-bridge fiducial-msgs roscpp tf2-ros tf2 dynamic-reconfigure visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node to build a 3D map of fiducials and estimate robot pose from fiducial transforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
