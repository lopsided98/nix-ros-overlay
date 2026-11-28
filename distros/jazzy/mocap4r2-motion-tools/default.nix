
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, mocap4r2-interfaces, python3Packages, rclpy, rosbag2-py, rosbag2-storage-default-plugins, rosidl-runtime-py, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-mocap4r2-motion-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/jazzy/mocap4r2_motion_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "546f4437064ef0a1153fcb8c5330d58438e449447d4baaf6049dd6fefe2a13da";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest rosbag2-storage-default-plugins ];
  propagatedBuildInputs = [ geometry-msgs mocap4r2-interfaces python3Packages.numpy rclpy rosbag2-py rosidl-runtime-py sensor-msgs tf2-ros-py ];

  meta = {
    description = "Human motion tools of MOCAP4ROS2: skeleton TF and joint angles, gap filling and zero-phase filtering, and export of recorded sessions to CSV, TUM and C3D";
    license = with lib.licenses; [ asl20 ];
  };
}
