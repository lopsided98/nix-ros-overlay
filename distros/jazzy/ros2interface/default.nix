
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, ros2cli, ros2cli-test-interfaces, rosidl-adapter, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2interface";
  version = "0.32.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2interface/0.32.2-1.tar.gz";
    name = "0.32.2-1.tar.gz";
    sha256 = "9c7f84b02434c8052d1e0ad71e1eb859af1e7f7b3c85206fb127edac02ea3eb0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ros2cli-test-interfaces test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-adapter rosidl-runtime-py ];

  meta = {
    description = "The interface command for ROS 2 command line tools";
    license = with lib.licenses; [ asl20 ];
  };
}
