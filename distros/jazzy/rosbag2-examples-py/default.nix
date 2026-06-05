
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-examples-py";
  version = "0.26.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_examples_py/0.26.11-1.tar.gz";
    name = "0.26.11-1.tar.gz";
    sha256 = "1ef0abcd709bb931543a46cc2afee2bd1683a7721681f6670e2f3995ca935791";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py rosidl-runtime-py std-msgs ];

  meta = {
    description = "Python bag writing tutorial";
    license = with lib.licenses; [ asl20 ];
  };
}
