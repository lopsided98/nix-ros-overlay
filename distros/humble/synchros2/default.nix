
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, example-interfaces, geometry-msgs, launch, message-filters, python3Packages, rclpy, std-msgs, std-srvs, tf2-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-synchros2";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/rai-opensource/synchros2-release/archive/release/humble/synchros2/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "c71ead25c290f006f34dc68b8c4b518e00fae7ab230d0b59b1a299d296768c92";
  };

  buildType = "ament_python";
  checkInputs = [ example-interfaces python3Packages.pytest python3Packages.typing-extensions std-msgs std-srvs ];
  propagatedBuildInputs = [ action-msgs geometry-msgs launch message-filters rclpy tf2-msgs tf2-ros-py ];

  meta = {
    description = "RAI Institute wrappers for ROS2";
    license = with lib.licenses; [ mit ];
  };
}
