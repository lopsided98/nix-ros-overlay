
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, example-interfaces, geometry-msgs, launch, message-filters, python3Packages, rclpy, std-msgs, std-srvs, tf2-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-synchros2";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/rai-opensource/synchros2-release/archive/release/jazzy/synchros2/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "9ddfd3f18fd2bb7ec360c9dc52570eae0162186dfa2754646c5f3187a9d07577";
  };

  buildType = "ament_python";
  checkInputs = [ example-interfaces python3Packages.pytest python3Packages.typing-extensions std-msgs std-srvs ];
  propagatedBuildInputs = [ action-msgs geometry-msgs launch message-filters rclpy tf2-msgs tf2-ros-py ];

  meta = {
    description = "RAI Institute wrappers for ROS2";
    license = with lib.licenses; [ mit ];
  };
}
