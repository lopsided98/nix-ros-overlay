
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-ffw-teleop";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_teleop/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "7e3791ba4e162bb2550f5658df6c733204d8e59ece8b5e65a0c3f13654452cec";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
