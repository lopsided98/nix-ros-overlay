
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, auto-apms-behavior-tree, auto-apms-interfaces, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2param, ros2run, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-auto-apms-ros2behavior";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/kilted/auto_apms_ros2behavior/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "9a284c783a5237857171142b679927d7d10fba8ffeda4c8985d900318cd775b8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python auto-apms-behavior-tree auto-apms-interfaces rcl-interfaces rclpy ros2cli ros2param ros2run std-srvs ];

  meta = {
    description = "AutoAPMS related extensions for the ROS 2 CLI introducing the ros2 behavior command";
    license = with lib.licenses; [ asl20 ];
  };
}
