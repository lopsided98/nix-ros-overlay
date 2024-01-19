
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, compressed-depth-image-transport, compressed-image-transport, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-transport, image-view, image-view2, interactive-markers, jsk-data, jsk-footstep-msgs, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, message-generation, message-runtime, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, octomap-server, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, python3Packages, robot-self-filter, rosbag, rosboost-cfg, roscpp-tutorials, roslaunch, rostest, rviz, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf, tf-conversions, tf2-ros, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-jsk-pcl-ros-utils";
  version = "1.2.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_pcl_ros_utils/1.2.17-2.tar.gz";
    name = "1.2.17-2.tar.gz";
    sha256 = "ea302e738bfaebf336c34a2e89f1cfe4c67ab8d31fd0e140b56d23c3c286b1e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.pyyaml ];
  checkInputs = [ jsk-perception jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ boost compressed-depth-image-transport compressed-image-transport cv-bridge diagnostic-msgs diagnostic-updater dynamic-reconfigure eigen-conversions geometry-msgs image-geometry image-transport image-view image-view2 interactive-markers jsk-data jsk-footstep-msgs jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools kdl-conversions kdl-parser laser-assembler message-runtime moveit-core moveit-ros-perception nav-msgs nodelet octomap octomap-msgs octomap-ros octomap-server openni2-launch pcl-conversions pcl-msgs pcl-ros python3Packages.scikitlearn robot-self-filter rosbag rosboost-cfg roscpp-tutorials rviz sensor-msgs std-msgs std-srvs stereo-msgs tf tf-conversions tf2-ros visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS utility nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
