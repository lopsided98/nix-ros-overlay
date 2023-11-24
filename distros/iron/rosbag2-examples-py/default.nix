
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, rosbag2-py, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rosbag2-examples-py";
  version = "0.22.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_examples_py/0.22.5-1.tar.gz";
    name = "0.22.5-1.tar.gz";
    sha256 = "63969165882f7679370fc22896215fadbbd02bf0e9b5eb8ad21418dd8977dcb0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py std-msgs ];

  meta = {
    description = ''Python bag writing tutorial'';
    license = with lib.licenses; [ asl20 ];
  };
}
