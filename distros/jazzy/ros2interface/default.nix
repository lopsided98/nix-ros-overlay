
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, ros2cli, ros2cli-test-interfaces, rosidl-adapter, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2interface";
  version = "0.32.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2interface/0.32.10-1.tar.gz";
    name = "0.32.10-1.tar.gz";
    sha256 = "b5e74353bbbae532d4b1966ebfb94bfc26cc87ca319d017e288fb3f88bc64cad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ros2cli-test-interfaces test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-adapter rosidl-runtime-py ];

  meta = {
    description = "The interface command for ROS 2 command line tools";
    license = with lib.licenses; [ asl20 ];
  };
}
