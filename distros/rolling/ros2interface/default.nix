
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, pythonPackages, ros2cli, ros2cli-test-interfaces, rosidl-adapter, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2interface";
  version = "0.30.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2interface/0.30.1-1.tar.gz";
    name = "0.30.1-1.tar.gz";
    sha256 = "2a589538a1cadde193f28beaad5697e7e59ad853520273e8190efc29379d7440";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest-timeout pythonPackages.pytest ros2cli-test-interfaces test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-adapter rosidl-runtime-py ];

  meta = {
    description = ''The interface command for ROS 2 command line tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
