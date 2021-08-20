
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, pythonPackages, rclpy, sensor-msgs, std-msgs, std-srvs, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-tests";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_tests/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "4b4eae86b1636137ca02e21bf09fc8140130643fe2c939ddd9ed703b18b1f570";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 geometry-msgs launch launch-testing launch-testing-ament-cmake launch-testing-ros pythonPackages.pytest sensor-msgs std-msgs std-srvs ];
  propagatedBuildInputs = [ rclpy webots-ros2-driver ];

  meta = {
    description = ''System tests for `webots_ros2` packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
