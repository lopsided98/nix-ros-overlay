
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, pluginlib, std-msgs, tf, catkin, cmake-modules, image-transport, eigen, cv-bridge, nodelet, roscpp, apriltag, message-generation, opencv3, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-apriltag-ros";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag_ros-release/archive/release/melodic/apriltag_ros/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "a703b93d69b4451a75acd90076aed64ca7eabe84e88eda2dc798b532de39fb52";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs pluginlib std-msgs tf cmake-modules roscpp image-transport eigen cv-bridge nodelet opencv3 apriltag message-generation image-geometry ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs pluginlib std-msgs tf image-transport eigen cv-bridge nodelet roscpp apriltag message-runtime opencv3 image-geometry ];
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
