
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, diagnostic-msgs, lifecycle-msgs, mocap4r2-interfaces, mocap4r2-motion-tools, mocap4r2-sim-driver, python3Packages, rclpy, ros2bag, ros2cli, ros2param, rosbag2-storage-default-plugins }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "c63d731605158f25b527c24ac33a5c5eb59ff18c9f95e0a1418a774d20e1bbcb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint mocap4r2-sim-driver python3Packages.pytest ];
  propagatedBuildInputs = [ diagnostic-msgs lifecycle-msgs mocap4r2-interfaces mocap4r2-motion-tools python3Packages.pyyaml rclpy ros2bag ros2cli ros2param rosbag2-storage-default-plugins ];

  meta = {
    description = "Command line (ros2 mocap4r2) and terminal tools to monitor and control MOCAP4ROS2 systems";
    license = with lib.licenses; [ asl20 ];
  };
}
