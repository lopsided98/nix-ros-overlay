
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, image-transport, image-view, message-generation, message-runtime, nodelet, rosbag, roscpp, roslaunch, rosservice, rostest, rostopic, sensor-msgs, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-opencv-apps";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-perception/opencv_apps-release/archive/release/kinetic/opencv_apps/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e1009a12d6fda59502ad6336ab20cef4fe785066348088630ba57e384ce2ae1e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ compressed-image-transport image-proc image-view rosbag roslaunch rosservice rostest rostopic topic-tools ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport message-runtime nodelet roscpp sensor-msgs std-msgs std-srvs ];
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
