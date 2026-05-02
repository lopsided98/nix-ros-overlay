
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy, rosbag2-compression, rosbag2-py, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-py";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_py/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "91b24db48fd28c4b0930157b95bf657955aeaee09eff79a15c0591fc0e16db9c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-compression rosbag2-py rosidl-runtime-py std-msgs ];

  meta = {
    description = "Python bag writing tutorial";
    license = with lib.licenses; [ asl20 ];
  };
}
