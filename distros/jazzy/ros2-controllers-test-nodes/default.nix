
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-ros, launch-testing-ros, pythonPackages, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-controllers-test-nodes";
  version = "4.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/ros2_controllers_test_nodes/4.17.0-1.tar.gz";
    name = "4.17.0-1.tar.gz";
    sha256 = "a9cf11e3d76cea43892198eb4df12e0553b73e1788b2289b7bf5da9504411b64";
  };

  buildType = "ament_python";
  checkInputs = [ launch-ros launch-testing-ros pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing functionalities of the ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
