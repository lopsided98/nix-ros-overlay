
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, example-interfaces, geometry-msgs, launch, message-filters, python3Packages, rclpy, std-msgs, std-srvs, tf2-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-synchros2";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/bdaiinstitute/synchros2-release/archive/release/jazzy/synchros2/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "ce8441e5ec9bc04e98ff0631b0d99e786b8e931e00597bcb1593dfd9ab4a103c";
  };

  buildType = "ament_python";
  checkInputs = [ example-interfaces python3Packages.pytest python3Packages.typing-extensions std-msgs std-srvs ];
  propagatedBuildInputs = [ action-msgs geometry-msgs launch message-filters rclpy tf2-msgs tf2-ros-py ];

  meta = {
    description = "RAI Institute wrappers for ROS2";
    license = with lib.licenses; [ mit ];
  };
}
