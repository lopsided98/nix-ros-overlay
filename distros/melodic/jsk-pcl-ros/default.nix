
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, checkerboard-detector, cv-bridge, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-transport, image-view2, interactive-markers, jsk-data, jsk-footstep-msgs, jsk-interactive-marker, jsk-pcl-ros-utils, jsk-perception, jsk-recognition-msgs, jsk-recognition-utils, jsk-tools, jsk-topic-tools, kdl-conversions, kdl-parser, laser-assembler, libyamlcpp, ml-classifiers, moveit-core, moveit-ros-perception, nav-msgs, nodelet, octomap, octomap-server, openni-launch, openni2-launch, pcl-conversions, pcl-msgs, pcl-ros, pythonPackages, resized-image-transport, robot-self-filter, rosboost-cfg, roscpp-tutorials, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, stereo-image-proc, stereo-msgs, tf, tf-conversions, tf2-ros, topic-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-pcl-ros";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_pcl_ros/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "0383a96eb13ac27a5589583457aedf6ccc491f969f45150e468fa1a715c82f86";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ jsk-perception jsk-tools roslaunch rostest ];
  propagatedBuildInputs = [ boost checkerboard-detector cv-bridge diagnostic-msgs diagnostic-updater dynamic-reconfigure eigen-conversions geometry-msgs image-geometry image-transport image-view2 interactive-markers jsk-data jsk-footstep-msgs jsk-interactive-marker jsk-pcl-ros-utils jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools kdl-conversions kdl-parser laser-assembler libyamlcpp ml-classifiers moveit-core moveit-ros-perception nav-msgs nodelet octomap octomap-server openni-launch openni2-launch pcl-conversions pcl-msgs pcl-ros pythonPackages.scikitlearn resized-image-transport robot-self-filter rosboost-cfg roscpp-tutorials sensor-msgs std-msgs std-srvs stereo-image-proc stereo-msgs tf tf-conversions tf2-ros topic-tools visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
