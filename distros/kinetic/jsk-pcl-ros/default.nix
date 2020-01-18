
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, checkerboard-detector, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-transport, image-view2, interactive-markers, jsk-data, jsk-footstep-msgs, jsk-pcl-ros-utils, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, libyamlcpp, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-server, openni-launch, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, pythonPackages, resized-image-transport, robot-self-filter, rosboost-cfg, roscpp-tutorials, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf, tf-conversions, tf2-ros, topic-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-pcl-ros";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_pcl_ros/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "3631c4dcfa7410c8d954c259a6463e2a585251dbe4df24243aacfee235050ffe";
  };

  buildType = "catkin";
  checkInputs = [ jsk-perception jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ boost checkerboard-detector cv-bridge diagnostic-msgs diagnostic-updater dynamic-reconfigure eigen-conversions geometry-msgs image-geometry image-transport image-view2 interactive-markers jsk-data jsk-footstep-msgs jsk-pcl-ros-utils jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools kdl-conversions kdl-parser laser-assembler libyamlcpp moveit-core moveit-ros-perception nav-msgs nodelet octomap octomap-server openni-launch openni2-launch pcl-conversions pcl-msgs pcl-ros pythonPackages.scikitlearn resized-image-transport robot-self-filter rosboost-cfg roscpp-tutorials sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf tf-conversions tf2-ros topic-tools visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
