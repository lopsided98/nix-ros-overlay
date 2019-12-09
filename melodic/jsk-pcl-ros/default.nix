
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, eigen-conversions, interactive-markers, tf, laser-assembler, openni-launch, image-transport, jsk-footstep-msgs, nodelet, nav-msgs, rostest, kdl-parser, sensor-msgs, diagnostic-msgs, rosboost-cfg, dynamic-reconfigure, octomap, image-view2, roscpp-tutorials, libyamlcpp, openni2-launch, octomap-server, jsk-tools, jsk-perception, tf2-ros, jsk-topic-tools, stereo-image-proc, moveit-core, pcl-ros, resized-image-transport, checkerboard-detector, std-msgs, std-srvs, jsk-pcl-ros-utils, pythonPackages, jsk-recognition-msgs, catkin, jsk-data, jsk-recognition-utils, robot-self-filter, cv-bridge, topic-tools, roslaunch, kdl-conversions, image-geometry, boost, pcl-msgs, moveit-ros-perception, stereo-msgs, pcl-conversions, visualization-msgs, diagnostic-updater, tf-conversions, jsk-interactive-marker }:
buildRosPackage {
  pname = "ros-melodic-jsk-pcl-ros";
  version = "1.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_pcl_ros/1.2.10-0.tar.gz";
    name = "1.2.10-0.tar.gz";
    sha256 = "90d0c0bab294d0c49ab9228c91f887bd092f6400df9c1e37b834539159e2907f";
  };

  buildType = "catkin";
  buildInputs = [ jsk-topic-tools pcl-ros interactive-markers jsk-pcl-ros-utils tf laser-assembler jsk-recognition-utils jsk-data pcl-msgs libyamlcpp moveit-ros-perception octomap-server cv-bridge tf-conversions image-geometry ];
  checkInputs = [ jsk-tools roslaunch rostest jsk-perception ];
  propagatedBuildInputs = [ geometry-msgs eigen-conversions interactive-markers tf laser-assembler openni-launch image-transport jsk-footstep-msgs nodelet nav-msgs kdl-parser sensor-msgs diagnostic-msgs rosboost-cfg dynamic-reconfigure octomap image-view2 roscpp-tutorials libyamlcpp openni2-launch octomap-server tf2-ros jsk-topic-tools pcl-ros stereo-image-proc moveit-core resized-image-transport checkerboard-detector pythonPackages.scikitlearn std-msgs std-srvs jsk-pcl-ros-utils jsk-recognition-msgs jsk-recognition-utils jsk-data robot-self-filter cv-bridge topic-tools kdl-conversions image-geometry boost pcl-msgs stereo-msgs moveit-ros-perception pcl-conversions visualization-msgs diagnostic-updater tf-conversions jsk-interactive-marker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
