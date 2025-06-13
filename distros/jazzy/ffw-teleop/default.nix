
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-ffw-teleop";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_teleop/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "d5fd2c9a7662e79080b6804f3ac32a7bc7a90cd50a1e030df553f94e9faafe1b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
