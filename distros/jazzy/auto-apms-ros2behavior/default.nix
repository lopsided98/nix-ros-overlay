
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, auto-apms-behavior-tree, auto-apms-interfaces, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2param, ros2run, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-ros2behavior";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_ros2behavior/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "980ffb2e976e303761a3800aa7a1519792a0feefbee9f8e3356e10643bf7ed9b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python auto-apms-behavior-tree auto-apms-interfaces rcl-interfaces rclpy ros2cli ros2param ros2run std-srvs ];

  meta = {
    description = "AutoAPMS related extensions for the ROS 2 CLI introducing the ros2 behavior command";
    license = with lib.licenses; [ asl20 ];
  };
}
