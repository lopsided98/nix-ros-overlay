
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, rosbag2-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-py";
  version = "0.24.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_py/0.24.0-2.tar.gz";
    name = "0.24.0-2.tar.gz";
    sha256 = "cbf809a4113b9b9b2e32e7e5d113b03c96fafd08b66e3f4a17b83bba18f7c5b6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py std-msgs ];

  meta = {
    description = ''Python bag writing tutorial'';
    license = with lib.licenses; [ asl20 ];
  };
}
