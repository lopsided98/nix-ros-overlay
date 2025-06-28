
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-ffw-teleop";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_teleop/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "ecdfbca5b11156a501d39bba762ed3f277ea89432fade9b7d013932b8accfdd4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
