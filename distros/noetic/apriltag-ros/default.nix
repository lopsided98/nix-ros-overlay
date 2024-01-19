
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, apriltag, catkin, cmake-modules, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-generation, message-runtime, nodelet, opencv, pluginlib, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-apriltag-ros";
  version = "3.2.1-r3";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag_ros-release/archive/release/noetic/apriltag_ros/3.2.1-3.tar.gz";
    name = "3.2.1-3.tar.gz";
    sha256 = "831217c3c023b76328b58657ab89f70691dffbe0bf3363bd2e60408c1cea8152";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  propagatedBuildInputs = [ apriltag cv-bridge eigen geometry-msgs image-geometry image-transport message-runtime nodelet opencv opencv.cxxdev pluginlib roscpp sensor-msgs std-msgs tf ];
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
