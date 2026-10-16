
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-index-python, auto-apms-behavior-tree, auto-apms-interfaces, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2param, ros2run, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-ros2behavior";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_ros2behavior/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "b0bef6ce6b7608ffd1894b995e4c31320128b42bb202af2b0ec5c91811ef80f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python auto-apms-behavior-tree auto-apms-interfaces rcl-interfaces rclpy ros2cli ros2param ros2run std-srvs ];

  meta = {
    description = "AutoAPMS related extensions for the ROS 2 CLI introducing the ros2 behavior command";
    license = with lib.licenses; [ asl20 ];
  };
}
