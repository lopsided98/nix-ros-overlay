
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, octomap, jsk-tools, image-view, pcl-ros, moveit-ros-perception, diagnostic-msgs, tf-conversions, tf, pcl-conversions, geometry-msgs, stereo-msgs, laser-assembler, boost, robot-self-filter, image-transport, jsk-footstep-msgs, jsk-topic-tools, pythonPackages, message-generation, octomap-ros, moveit-core, rviz, pcl-msgs, message-runtime, jsk-data, eigen-conversions, compressed-depth-image-transport, roslaunch, kdl-conversions, std-srvs, rosbag, catkin, tf2-ros, octomap-msgs, nav-msgs, jsk-recognition-msgs, std-msgs, openni2-launch, nodelet, compressed-image-transport, visualization-msgs, octomap-server, rosboost-cfg, image-view2, kdl-parser, roscpp-tutorials, libyamlcpp, sensor-msgs, diagnostic-updater, rostest, interactive-markers, jsk-recognition-utils, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-jsk-pcl-ros-utils";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_pcl_ros_utils/1.2.10-0.tar.gz;
    sha256 = "6e7df993656d79db72135ba155b72bc4f7876ef122d082f42cbf09e4e9304382";
  };

  buildInputs = [ cv-bridge image-geometry octomap pcl-ros tf-conversions moveit-ros-perception diagnostic-msgs tf pcl-conversions geometry-msgs stereo-msgs laser-assembler boost robot-self-filter image-transport jsk-footstep-msgs jsk-topic-tools message-generation octomap-ros moveit-core jsk-data pcl-msgs eigen-conversions kdl-conversions std-srvs tf2-ros octomap-msgs nav-msgs jsk-recognition-msgs std-msgs nodelet visualization-msgs octomap-server image-view2 rosboost-cfg roscpp-tutorials kdl-parser libyamlcpp sensor-msgs diagnostic-updater interactive-markers jsk-recognition-utils dynamic-reconfigure ];
  checkInputs = [ rostest roslaunch jsk-tools ];
  propagatedBuildInputs = [ cv-bridge image-geometry octomap image-view pcl-ros tf-conversions moveit-ros-perception diagnostic-msgs tf pcl-conversions geometry-msgs stereo-msgs laser-assembler boost robot-self-filter image-transport jsk-footstep-msgs jsk-topic-tools octomap-ros rviz message-runtime jsk-data pcl-msgs compressed-depth-image-transport moveit-core eigen-conversions kdl-conversions std-srvs rosbag tf2-ros octomap-msgs nav-msgs jsk-recognition-msgs std-msgs openni2-launch nodelet compressed-image-transport visualization-msgs octomap-server image-view2 rosboost-cfg roscpp-tutorials kdl-parser libyamlcpp sensor-msgs pythonPackages.scikitlearn diagnostic-updater interactive-markers jsk-recognition-utils dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS utility nodelets for pointcloud perception.'';
    #license = lib.licenses.BSD;
  };
}
