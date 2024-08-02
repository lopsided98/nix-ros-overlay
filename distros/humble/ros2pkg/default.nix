
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-humble-ros2pkg";
  version = "0.18.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2pkg/0.18.11-1.tar.gz";
    name = "0.18.11-1.tar.gz";
    sha256 = "732d77015f9075d27039428f16aa5a62ec7274438c3d18cc2a7ac9a3ebf6d095";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-copyright ament-index-python python3Packages.catkin-pkg python3Packages.empy python3Packages.importlib-resources python3Packages.setuptools ros2cli ];

  meta = {
    description = "The pkg command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
