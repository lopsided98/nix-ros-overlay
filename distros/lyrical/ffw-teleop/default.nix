
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-ffw-teleop";
  version = "1.1.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/lyrical/ffw_teleop/1.1.14-3.tar.gz";
    name = "1.1.14-3.tar.gz";
    sha256 = "e2bc54232de532bdd577c0ecebb21e02c4497cc5b0e5954b7965f0cf62c6d646";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.tkinter rclpy ];

  meta = {
    description = "FFW teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
