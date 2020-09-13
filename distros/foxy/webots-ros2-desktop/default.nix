
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rclpy, std-msgs, webots-ros2 }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-desktop";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_desktop/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "ee9424e298c5e7037699889f137a2fbcdfa63a51a0a1b3ec0c533f0d54673f42";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2 ];

  meta = {
    description = ''Interface between Webots and ROS2 including the Webots package'';
    license = with lib.licenses; [ asl20 ];
  };
}
