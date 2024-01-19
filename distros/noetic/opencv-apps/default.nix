
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, image-transport, image-view, message-generation, message-runtime, nodelet, rosbag, roscpp, roslaunch, rosservice, rostest, rostopic, sensor-msgs, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-opencv-apps";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-perception/opencv_apps-release/archive/release/noetic/opencv_apps/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "d6684f71808af4791903d10967d1783f7577512b9d5ccb1b64dfeb3065bf7a5c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ compressed-image-transport image-proc rosbag roslaunch rosservice rostest rostopic topic-tools ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport image-view message-runtime nodelet roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>opencv_apps provides various nodes that run internally OpenCV's functionalities and publish the result as ROS topics. With opencv_apps, you can skip writing OpenCV application codes for a lot of its functionalities by simply running a launch file that corresponds to OpenCV's functionality you want.</p>
    <ul>
      <li>You can have a look at all launch files provided here (be sure to choose the correct branch. As of Sept. 2016 indigo branch is used for ROS Indigo, Jade, and Kinetic distros).</li>
      <li>Some of the features covered by opencv_apps are explained in <a href="http://wiki.ros.org/opencv_apps">the wiki</a>.</li>
    </ul>
    <p>The most of code is originally taken from https://github.com/Itseez/opencv/tree/master/samples/cpp</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
