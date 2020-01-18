
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, compressed-depth-image-transport, compressed-image-transport, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-transport, image-view, image-view2, interactive-markers, jsk-data, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, libyamlcpp, message-generation, message-runtime, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-msgs, octomap-ros, octomap-server, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, pythonPackages, robot-self-filter, rosbag, rosboost-cfg, roscpp-tutorials, roslaunch, rostest, rviz, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-pcl-ros-utils";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros_utils/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "1fbbf9fa20c68ff5ed60ea21692a93b4caa7617c40b1f85549b82dc2f8dfd871";
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
