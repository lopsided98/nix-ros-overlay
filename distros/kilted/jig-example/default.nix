
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, geometry-msgs, jig, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, rcl-interfaces, rclcpp, rclpy, std-msgs, std-srvs, tf2-msgs }:
buildRosPackage {
  pname = "ros-kilted-jig-example";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/kilted/jig_example/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "f1506d29ede8ee5e394c9475cdeb1517a3bfe9fd9fb0483f4497db90b4997b28";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake lifecycle-msgs rcl-interfaces tf2-msgs ];
  propagatedBuildInputs = [ example-interfaces geometry-msgs jig rclcpp rclpy std-msgs std-srvs ];

  meta = {
    description = "An example node using the jig system.";
    license = with lib.licenses; [ asl20 ];
  };
}
