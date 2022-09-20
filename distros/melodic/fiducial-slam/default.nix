
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, fiducial-msgs, image-transport, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-fiducial-slam";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/fiducials-release/archive/release/melodic/fiducial_slam/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "d7bb17f5b59c70f84500b9e64d53c3d254832b3a1b802f24649394cd687720e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure fiducial-msgs image-transport roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node to build a 3D map of fiducials and estimate robot pose from fiducial transforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
