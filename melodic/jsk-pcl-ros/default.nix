
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, octomap, jsk-interactive-marker, jsk-tools, pcl-ros, moveit-ros-perception, diagnostic-msgs, jsk-pcl-ros-utils, tf-conversions, tf, pcl-conversions, jsk-perception, geometry-msgs, laser-assembler, stereo-msgs, boost, robot-self-filter, image-transport, jsk-footstep-msgs, jsk-topic-tools, pythonPackages, resized-image-transport, openni-launch, moveit-core, jsk-data, pcl-msgs, eigen-conversions, roslaunch, kdl-conversions, std-srvs, catkin, checkerboard-detector, tf2-ros, nav-msgs, jsk-recognition-msgs, std-msgs, openni2-launch, nodelet, visualization-msgs, octomap-server, rosboost-cfg, stereo-image-proc, kdl-parser, image-view2, roscpp-tutorials, libyamlcpp, sensor-msgs, diagnostic-updater, rostest, interactive-markers, jsk-recognition-utils, dynamic-reconfigure, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-jsk-pcl-ros";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_pcl_ros/1.2.10-0.tar.gz;
    sha256 = "90d0c0bab294d0c49ab9228c91f887bd092f6400df9c1e37b834539159e2907f";
  };

  buildInputs = [ laser-assembler octomap-server libyamlcpp cv-bridge jsk-topic-tools pcl-msgs image-geometry interactive-markers jsk-recognition-utils pcl-ros moveit-ros-perception jsk-pcl-ros-utils tf-conversions tf jsk-data ];
  checkInputs = [ rostest roslaunch jsk-tools jsk-perception ];
  propagatedBuildInputs = [ cv-bridge image-geometry octomap jsk-interactive-marker pcl-ros tf-conversions jsk-pcl-ros-utils moveit-ros-perception tf pcl-conversions diagnostic-msgs geometry-msgs stereo-msgs laser-assembler boost robot-self-filter image-transport jsk-footstep-msgs jsk-topic-tools resized-image-transport openni-launch moveit-core jsk-data pcl-msgs eigen-conversions kdl-conversions std-srvs checkerboard-detector tf2-ros nav-msgs jsk-recognition-msgs std-msgs openni2-launch nodelet visualization-msgs octomap-server stereo-image-proc image-view2 rosboost-cfg roscpp-tutorials kdl-parser libyamlcpp sensor-msgs pythonPackages.scikitlearn diagnostic-updater interactive-markers jsk-recognition-utils dynamic-reconfigure topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelets for pointcloud perception.'';
    #license = lib.licenses.BSD;
  };
}