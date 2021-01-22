
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apriltag, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-generation, message-runtime, nodelet, opencv3, pluginlib, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-apriltag-ros";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag_ros-release/archive/release/noetic/apriltag_ros/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "303875c5224713f03cba55605b0d5110fbce4325ecce284505aa825ea8224537";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ apriltag cv-bridge eigen geometry-msgs image-geometry image-transport message-runtime nodelet opencv3 pluginlib roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS wrapper of the AprilTag 3 visual fiducial detection
    algorithm. Provides full access to the core AprilTag 3 algorithm's
    customizations and makes the tag detection image and detected tags' poses
    available over ROS topics (including tf). The core AprilTag 3 algorithm is
    extended to allow the detection of tag bundles and a bundle calibration
    script is provided (bundle detection is more accurate than single tag
    detection). Continuous (camera image stream) and single image detector nodes
    are available.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
