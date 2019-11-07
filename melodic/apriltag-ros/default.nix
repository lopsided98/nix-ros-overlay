
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, tf, image-transport, sensor-msgs, catkin, cv-bridge, image-geometry, message-generation, apriltag, message-runtime, nodelet, eigen, std-msgs, roscpp, opencv3, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-apriltag-ros";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag_ros-release/archive/release/melodic/apriltag_ros/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "a703b93d69b4451a75acd90076aed64ca7eabe84e88eda2dc798b532de39fb52";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib cmake-modules image-transport sensor-msgs cv-bridge roscpp image-geometry message-generation apriltag nodelet eigen std-msgs tf opencv3 geometry-msgs ];
  propagatedBuildInputs = [ pluginlib tf image-transport sensor-msgs cv-bridge image-geometry apriltag message-runtime nodelet eigen std-msgs roscpp opencv3 geometry-msgs ];
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
