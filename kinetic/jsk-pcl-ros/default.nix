
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, interactive-markers, tf, laser-assembler, openni-launch, image-transport, jsk-footstep-msgs, nodelet, nav-msgs, rostest, kdl-parser, sensor-msgs, diagnostic-msgs, rosboost-cfg, dynamic-reconfigure, octomap, image-view2, roscpp-tutorials, libyamlcpp, openni2-launch, octomap-server, jsk-tools, jsk-perception, tf2-ros, jsk-topic-tools, stereo-image-proc, moveit-core, pcl-ros, resized-image-transport, checkerboard-detector, std-msgs, std-srvs, jsk-pcl-ros-utils, pythonPackages, jsk-recognition-msgs, catkin, jsk-data, jsk-recognition-utils, robot-self-filter, cv-bridge, topic-tools, roslaunch, kdl-conversions, image-geometry, boost, pcl-msgs, moveit-ros-perception, stereo-msgs, pcl-conversions, visualization-msgs, diagnostic-updater, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-jsk-pcl-ros";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "3631c4dcfa7410c8d954c259a6463e2a585251dbe4df24243aacfee235050ffe";
  };

  buildType = "catkin";
  buildInputs = [ jsk-topic-tools pcl-ros interactive-markers jsk-pcl-ros-utils tf laser-assembler jsk-recognition-utils jsk-data pcl-msgs libyamlcpp moveit-ros-perception octomap-server cv-bridge tf-conversions image-geometry ];
  checkInputs = [ jsk-tools roslaunch rostest jsk-perception ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions interactive-markers tf laser-assembler openni-launch image-transport jsk-footstep-msgs nodelet nav-msgs kdl-parser sensor-msgs diagnostic-msgs rosboost-cfg dynamic-reconfigure octomap image-view2 roscpp-tutorials libyamlcpp openni2-launch octomap-server tf2-ros jsk-topic-tools pcl-ros stereo-image-proc moveit-core resized-image-transport checkerboard-detector pythonPackages.scikitlearn std-msgs std-srvs jsk-pcl-ros-utils jsk-recognition-msgs jsk-recognition-utils jsk-data robot-self-filter cv-bridge topic-tools kdl-conversions image-geometry boost pcl-msgs stereo-msgs moveit-ros-perception pcl-conversions visualization-msgs diagnostic-updater tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
