
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, class-loader, compressed-image-transport, curl, cv-bridge, geometry-msgs, image-proc, image-publisher, image-transport, image-view, launch-ros, launch-testing-ament-cmake, message-filters, python3Packages, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-py, sensor-msgs, std-msgs, std-srvs, topic-tools }:
buildRosPackage {
  pname = "ros-kilted-opencv-apps";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-perception/opencv_apps-release/archive/release/kilted/opencv_apps/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "61cb7bd03d43468cec1a136c3aca3e4e31852e078b633832f87f07c45c676a35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-index-python compressed-image-transport image-proc image-publisher launch-ros launch-testing-ament-cmake python3Packages.numpy python3Packages.opencv4 rosidl-runtime-py topic-tools ];
  propagatedBuildInputs = [ class-loader curl cv-bridge geometry-msgs image-transport image-view message-filters rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ros-environment rosidl-default-generators ];

  meta = {
    description = "<p>opencv_apps provides various nodes that run internally OpenCV's functionalities and publish the result as ROS topics. With opencv_apps, you can skip writing OpenCV application codes for a lot of its functionalities by simply running a launch file that corresponds to OpenCV's functionality you want.</p>
    <ul>
      <li>You can have a look at all launch files provided here (be sure to choose the correct branch. As of Sept. 2016 indigo branch is used for ROS Indigo, Jade, and Kinetic distros).</li>
      <li>The nodes are documented in <a href=\"https://ros-perception.github.io/opencv_apps/\">the documentation</a> (and <a href=\"http://wiki.ros.org/opencv_apps\">the wiki</a> for ROS 1).</li>
    </ul>
    <p>The most of code is originally taken from https://github.com/Itseez/opencv/tree/master/samples/cpp</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
