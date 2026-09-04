
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, geometry-msgs, jig, launch-ros, launch-testing, launch-testing-ament-cmake, lifecycle-msgs, rcl-interfaces, rclcpp, rclpy, std-msgs, std-srvs, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-jig-example";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jig-release/archive/release/jazzy/jig_example/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "eea6e46dba34267abde736ea58add376d45a65dcb0e1af73b535788a336dd280";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch-ros launch-testing launch-testing-ament-cmake lifecycle-msgs rcl-interfaces tf2-msgs ];
  propagatedBuildInputs = [ example-interfaces geometry-msgs jig rclcpp rclpy std-msgs std-srvs ];

  meta = {
    description = "An example node using the jig system.";
    license = with lib.licenses; [ asl20 ];
  };
}
