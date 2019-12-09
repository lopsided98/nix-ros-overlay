
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fiducial-msgs, sensor-msgs, dynamic-reconfigure, catkin, tf2, image-transport, tf2-geometry-msgs, cv-bridge, visualization-msgs, roscpp, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-fiducial-slam";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/kinetic/fiducial_slam/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "3cf7832b9de3272ed0fc6e24979219866a7678a23f3404f5da39f97ab6519f27";
  };

  buildType = "catkin";
  buildInputs = [ fiducial-msgs sensor-msgs dynamic-reconfigure tf2 image-transport tf2-geometry-msgs cv-bridge visualization-msgs roscpp tf2-ros ];
  propagatedBuildInputs = [ fiducial-msgs sensor-msgs dynamic-reconfigure roscpp image-transport tf2-geometry-msgs cv-bridge visualization-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node to build a 3D map of fiducials and estimate robot pose from fiducial transforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
