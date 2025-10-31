
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-ffw-teleop";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_teleop/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "6edf5d0be09fe6c56a4262c714a4b0b5f7eec7528ed5a9e877c7f9033a98951b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
