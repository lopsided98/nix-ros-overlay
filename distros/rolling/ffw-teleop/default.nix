
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-ffw-teleop";
  version = "1.1.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_teleop/1.1.14-2.tar.gz";
    name = "1.1.14-2.tar.gz";
    sha256 = "5124b0372caddd0bb6ec7f988f1f58e527fd95d0d9fe46fffb0e7677ff70f4be";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
