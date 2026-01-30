
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-ffw-teleop";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_teleop/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "d729c4e022aa2cefc47b7753f1d4f9f01dd9e2b25a94115b17960391e6d6afe3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
