
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, octomap, jsk-tools, pcl-ros, moveit-ros-perception, tf-conversions, diagnostic-msgs, jsk-pcl-ros-utils, tf, pcl-conversions, jsk-perception, geometry-msgs, laser-assembler, stereo-msgs, boost, robot-self-filter, image-transport, jsk-footstep-msgs, jsk-topic-tools, pythonPackages, resized-image-transport, openni-launch, moveit-core, jsk-data, pcl-msgs, eigen-conversions, roslaunch, kdl-conversions, std-srvs, catkin, checkerboard-detector, tf2-ros, nav-msgs, jsk-recognition-msgs, std-msgs, openni2-launch, visualization-msgs, nodelet, octomap-server, rosboost-cfg, image-view2, kdl-parser, roscpp-tutorials, stereo-image-proc, libyamlcpp, sensor-msgs, diagnostic-updater, rostest, interactive-markers, jsk-recognition-utils, dynamic-reconfigure, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-jsk-pcl-ros";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "3631c4dcfa7410c8d954c259a6463e2a585251dbe4df24243aacfee235050ffe";
  };

  buildType = "catkin";
  buildInputs = [ laser-assembler octomap-server libyamlcpp cv-bridge jsk-topic-tools pcl-msgs image-geometry interactive-markers jsk-recognition-utils pcl-ros moveit-ros-perception jsk-pcl-ros-utils tf-conversions tf jsk-data ];
  checkInputs = [ rostest roslaunch jsk-tools jsk-perception ];
  propagatedBuildInputs = [ cv-bridge image-geometry octomap pcl-ros moveit-ros-perception tf-conversions jsk-pcl-ros-utils tf pcl-conversions diagnostic-msgs geometry-msgs stereo-msgs laser-assembler boost robot-self-filter image-transport jsk-footstep-msgs jsk-topic-tools resized-image-transport openni-launch moveit-core jsk-data pcl-msgs eigen-conversions kdl-conversions std-srvs checkerboard-detector tf2-ros nav-msgs jsk-recognition-msgs std-msgs openni2-launch visualization-msgs nodelet octomap-server rosboost-cfg image-view2 roscpp-tutorials kdl-parser stereo-image-proc libyamlcpp sensor-msgs pythonPackages.scikitlearn diagnostic-updater interactive-markers jsk-recognition-utils dynamic-reconfigure topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
