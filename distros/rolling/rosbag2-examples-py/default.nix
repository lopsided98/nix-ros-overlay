
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, rosbag2-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-py";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_py/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "31beae3ede5293deeb7893d301aed8334206038079697878479e0a652e169be6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py std-msgs ];

  meta = {
    description = "Python bag writing tutorial";
    license = with lib.licenses; [ asl20 ];
  };
}
