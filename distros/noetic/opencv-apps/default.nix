
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, cv-bridge, dynamic-reconfigure, image-proc, image-transport, image-view, message-generation, message-runtime, nodelet, rosbag, roscpp, roslaunch, rosservice, rostest, rostopic, sensor-msgs, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-opencv-apps";
  version = "2.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-perception";
        repo = "opencv_apps-release";
        rev = "release/noetic/opencv_apps/2.0.2-1";
        sha256 = "sha256-lfwwOz8v849SujkM2RVUSV4VCoGLpW5K/q3d4sId6Us=";
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
