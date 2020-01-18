
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, compressed-depth-image-transport, compressed-image-transport, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-transport, image-view, image-view2, interactive-markers, jsk-data, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, libyamlcpp, message-generation, message-runtime, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, octomap-server, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, pythonPackages, robot-self-filter, rosbag, rosboost-cfg, roscpp-tutorials, roslaunch, rostest, rviz, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-pcl-ros-utils";
  version = "1.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_pcl_ros_utils/1.2.10-0.tar.gz";
    name = "1.2.10-0.tar.gz";
    sha256 = "6e7df993656d79db72135ba155b72bc4f7876ef122d082f42cbf09e4e9304382";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ boost compressed-depth-image-transport compressed-image-transport cv-bridge diagnostic-msgs diagnostic-updater dynamic-reconfigure eigen-conversions geometry-msgs image-geometry image-transport image-view image-view2 interactive-markers jsk-data jsk-footstep-msgs jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools kdl-conversions kdl-parser laser-assembler libyamlcpp message-runtime moveit-core moveit-ros-perception nav-msgs nodelet octomap octomap-msgs octomap-ros octomap-server openni2-launch pcl-conversions pcl-msgs pcl-ros pythonPackages.scikitlearn robot-self-filter rosbag rosboost-cfg roscpp-tutorials rviz sensor-msgs std-msgs std-srvs stereo-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS utility nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
