
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libcmt, git, rqt-gui, cv-bridge, jsk-gui-msgs, image-geometry, jsk-tools, image-view, pcl-ros, rospy, dynamic-reconfigure, tf, geometry-msgs, imagesift, opencv-apps, roslint, robot-self-filter, image-transport, pythonPackages, jsk-topic-tools, sound-play, message-generation, rviz, message-runtime, jsk-data, angles, roslaunch, roseus, rospack, mk, rosbag, leveldb, posedetection-msgs, catkin, jsk-recognition-msgs, std-msgs, openni2-launch, nodelet, roscpp, image-view2, cmake-modules, libyamlcpp, sensor-msgs, rostest, rostopic, jsk-recognition-utils, eigen }:
buildRosPackage {
  pname = "ros-kinetic-jsk-perception";
  version = "1.2.9";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_perception/1.2.9-0.tar.gz;
    sha256 = "6dc01391b1ef5ff81b01ab3a24e2718797f157ec5ba77e28e77e80034eeaa9dd";
  };

  buildInputs = [ libcmt git cv-bridge image-geometry pcl-ros tf geometry-msgs opencv-apps robot-self-filter image-transport jsk-topic-tools message-generation jsk-data angles roseus rospack mk posedetection-msgs jsk-recognition-msgs std-msgs nodelet roscpp eigen image-view2 cmake-modules libyamlcpp sensor-msgs jsk-recognition-utils dynamic-reconfigure ];
  checkInputs = [ rostest roslaunch roslint jsk-tools ];
  propagatedBuildInputs = [ libcmt rqt-gui jsk-gui-msgs cv-bridge image-geometry pythonPackages.chainer image-view rospy pcl-ros tf geometry-msgs opencv-apps imagesift robot-self-filter image-transport jsk-topic-tools sound-play rviz message-runtime jsk-data angles roseus rospack mk rosbag leveldb posedetection-msgs pythonPackages.pyyaml jsk-recognition-msgs std-msgs openni2-launch nodelet roscpp pythonPackages.dlib eigen image-view2 libyamlcpp sensor-msgs pythonPackages.scikitlearn pythonPackages.h5py rostopic jsk-recognition-utils dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes and nodelets for 2-D image perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
