
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, image-proc, image-transport, rosbag, cv-bridge, catkin, rosservice, topic-tools, rostest, message-generation, rostopic, image-view, nodelet, std-msgs, message-runtime, dynamic-reconfigure, roscpp, compressed-image-transport }:
buildRosPackage {
  pname = "ros-kinetic-opencv-apps";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ros-perception/opencv_apps-release/archive/release/kinetic/opencv_apps/2.0.0-0.tar.gz;
    sha256 = "9832eca7901959d7990e91415d9101f37eefd9c69aa91427f07550733e5f2af2";
  };

  buildInputs = [ std-srvs message-generation cv-bridge nodelet dynamic-reconfigure std-msgs image-transport roscpp ];
  checkInputs = [ rostest rostopic image-view topic-tools rosbag image-proc compressed-image-transport rosservice ];
  propagatedBuildInputs = [ std-srvs cv-bridge message-runtime nodelet dynamic-reconfigure std-msgs image-transport roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>opencv_apps provides various nodes that run internally OpenCV's functionalities and publish the result as ROS topics. With opencv_apps, you can skip writing OpenCV application codes for a lot of its functionalities by simply running a launch file that corresponds to OpenCV's functionality you want.</p>
    <ul>
      <li>You can have a look at all launch files provided here (be sure to choose the correct branch. As of Sept. 2016 indigo branch is used for ROS Indigo, Jade, and Kinetic distros).</li>
      <li>Some of the features covered by opencv_apps are explained in <a href="http://wiki.ros.org/opencv_apps">the wiki</a>.</li>
    </ul>
    <p>The most of code is originally taken from https://github.com/Itseez/opencv/tree/master/samples/cpp</p>'';
    #license = lib.licenses.BSD;
  };
}
