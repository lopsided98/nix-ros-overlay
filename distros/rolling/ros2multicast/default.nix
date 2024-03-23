
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2multicast";
  version = "0.31.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2multicast/0.31.1-2.tar.gz";
    name = "0.31.1-2.tar.gz";
    sha256 = "f9ace3cb06776abdee49afa91955e282fe27a80e49ddd45d89d8ee248e855fe6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = "The multicast command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
