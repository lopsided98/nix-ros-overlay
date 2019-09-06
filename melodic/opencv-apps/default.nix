
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, rosservice, image-view, image-transport, message-generation, message-runtime, roslaunch, image-proc, std-srvs, rosbag, catkin, std-msgs, roscpp, nodelet, compressed-image-transport, sensor-msgs, rostest, rostopic, dynamic-reconfigure, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-opencv-apps";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-perception/opencv_apps-release/archive/release/melodic/opencv_apps/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "11489debf5d3b3dc194472f483d67857db62f76665f6785ad4f55882c4e4d3dc";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-generation nodelet dynamic-reconfigure std-msgs roscpp ];
  checkInputs = [ roslaunch rosbag rosservice rostest rostopic image-view topic-tools image-proc compressed-image-transport ];
  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-runtime nodelet dynamic-reconfigure std-msgs roscpp ];
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
