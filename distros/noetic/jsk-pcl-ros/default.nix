
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, checkerboard-detector, compressed-depth-image-transport, compressed-image-transport, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, fetch-description, geometry-msgs, image-geometry, image-transport, image-view2, interactive-markers, joint-state-publisher, jsk-data, jsk-footstep-msgs, jsk-interactive-marker, jsk-pcl-ros-utils, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-server, openni-launch, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, pr2-description, python3Packages, resized-image-transport, robot-self-filter, robot-state-publisher, ros-environment, rosboost-cfg, roscpp-tutorials, roseus, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf, tf-conversions, tf2-ros, topic-tools, visualization-msgs, xacro, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-jsk-pcl-ros";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_pcl_ros/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "2016df19abd7a5cbb674402f8e92bd8062b1cbe7a8126744df91ed21b9dd0fe5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  checkInputs = [ compressed-depth-image-transport compressed-image-transport jsk-perception jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ boost checkerboard-detector cv-bridge diagnostic-msgs diagnostic-updater dynamic-reconfigure eigen-conversions fetch-description geometry-msgs image-geometry image-transport image-view2 interactive-markers joint-state-publisher jsk-data jsk-footstep-msgs jsk-interactive-marker jsk-pcl-ros-utils jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools kdl-conversions kdl-parser laser-assembler moveit-core moveit-ros-perception nav-msgs nodelet octomap octomap-server openni-launch openni2-launch pcl-conversions pcl-msgs pcl-ros pr2-description python3Packages.scikitlearn resized-image-transport robot-self-filter robot-state-publisher rosboost-cfg roscpp-tutorials roseus sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf tf-conversions tf2-ros topic-tools visualization-msgs xacro yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS nodelets for pointcloud perception.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
