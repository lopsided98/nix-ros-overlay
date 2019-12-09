
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, interactive-markers, tf, laser-assembler, image-transport, jsk-footstep-msgs, nodelet, nav-msgs, rostest, kdl-parser, sensor-msgs, diagnostic-msgs, rosboost-cfg, dynamic-reconfigure, message-runtime, octomap, image-view2, roscpp-tutorials, compressed-depth-image-transport, libyamlcpp, openni2-launch, octomap-server, jsk-tools, rosbag, tf2-ros, jsk-topic-tools, moveit-core, pcl-ros, std-msgs, std-srvs, pythonPackages, jsk-recognition-msgs, catkin, jsk-data, jsk-recognition-utils, robot-self-filter, cv-bridge, message-generation, roslaunch, kdl-conversions, image-geometry, boost, octomap-msgs, pcl-msgs, image-view, stereo-msgs, rviz, moveit-ros-perception, pcl-conversions, octomap-ros, diagnostic-updater, visualization-msgs, compressed-image-transport, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-jsk-pcl-ros-utils";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros_utils/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "1fbbf9fa20c68ff5ed60ea21692a93b4caa7617c40b1f85549b82dc2f8dfd871";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs eigen-conversions interactive-markers tf laser-assembler image-transport jsk-footstep-msgs nodelet nav-msgs kdl-parser sensor-msgs diagnostic-msgs rosboost-cfg dynamic-reconfigure octomap image-view2 roscpp-tutorials libyamlcpp octomap-server tf2-ros jsk-topic-tools pcl-ros moveit-core std-msgs std-srvs jsk-recognition-msgs jsk-recognition-utils jsk-data robot-self-filter cv-bridge message-generation kdl-conversions image-geometry boost octomap-msgs pcl-msgs stereo-msgs moveit-ros-perception pcl-conversions octomap-ros diagnostic-updater visualization-msgs tf-conversions ];
  checkInputs = [ jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions interactive-markers tf laser-assembler image-transport jsk-footstep-msgs nodelet nav-msgs kdl-parser sensor-msgs diagnostic-msgs rosboost-cfg dynamic-reconfigure message-runtime octomap image-view2 roscpp-tutorials libyamlcpp openni2-launch octomap-server compressed-depth-image-transport rosbag tf2-ros jsk-topic-tools pcl-ros moveit-core pythonPackages.scikitlearn std-msgs std-srvs jsk-recognition-msgs jsk-recognition-utils jsk-data robot-self-filter cv-bridge kdl-conversions image-geometry boost octomap-msgs pcl-msgs image-view stereo-msgs rviz moveit-ros-perception pcl-conversions octomap-ros visualization-msgs compressed-image-transport tf-conversions diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS utility nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
