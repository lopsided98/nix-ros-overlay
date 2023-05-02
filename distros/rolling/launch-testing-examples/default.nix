
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, demo-nodes-cpp, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, rcl-interfaces, rclpy, ros2bag, rosbag2-transport, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-launch-testing-examples";
  version = "0.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/launch_testing_examples/0.19.0-1.tar.gz";
    name = "0.19.0-1.tar.gz";
    sha256 = "0c37cda68c6391218060206708fe5da680e9beac81f06d80310aeb05b893a76a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ];
  propagatedBuildInputs = [ demo-nodes-cpp launch launch-ros launch-testing launch-testing-ros pythonPackages.pytest rcl-interfaces rclpy ros2bag rosbag2-transport std-msgs ];

  meta = {
    description = ''Examples of simple launch tests'';
    license = with lib.licenses; [ asl20 ];
  };
}
