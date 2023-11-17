
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, checkerboard-detector, compressed-depth-image-transport, compressed-image-transport, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, fetch-description, geometry-msgs, image-geometry, image-transport, image-view2, interactive-markers, jsk-data, jsk-footstep-msgs, jsk-interactive-marker, jsk-pcl-ros-utils, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-server, openni-launch, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, python3Packages, resized-image-transport, robot-self-filter, rosboost-cfg, roscpp-tutorials, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf, tf-conversions, tf2-ros, topic-tools, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-jsk-pcl-ros";
  version = "1.2.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_pcl_ros/1.2.17-1.tar.gz";
    name = "1.2.17-1.tar.gz";
    sha256 = "2bfe1a979992b61b698fb0ff5ced0861a6ba1b0419bfd5e128fa2cabbe4917e4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ compressed-depth-image-transport compressed-image-transport jsk-perception jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ boost checkerboard-detector cv-bridge diagnostic-msgs diagnostic-updater dynamic-reconfigure eigen-conversions fetch-description geometry-msgs image-geometry image-transport image-view2 interactive-markers jsk-data jsk-footstep-msgs jsk-interactive-marker jsk-pcl-ros-utils jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools kdl-conversions kdl-parser laser-assembler moveit-core moveit-ros-perception nav-msgs nodelet octomap octomap-server openni-launch openni2-launch pcl-conversions pcl-msgs pcl-ros python3Packages.scikitlearn resized-image-transport robot-self-filter rosboost-cfg roscpp-tutorials sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf tf-conversions tf2-ros topic-tools visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
