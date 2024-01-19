
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, pythonPackages, ros2cli, ros2cli-test-interfaces, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2interface";
  version = "0.18.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2interface/0.18.7-1.tar.gz";
    name = "0.18.7-1.tar.gz";
    sha256 = "d0d8746d8a89737ff045d1fa5f50494e0d66982272381b10dd06df99ac151c42";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ros2cli-test-interfaces test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The interface command for ROS 2 command line tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
