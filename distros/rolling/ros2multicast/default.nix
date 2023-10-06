
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2multicast";
  version = "0.29.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2multicast/0.29.1-1.tar.gz";
    name = "0.29.1-1.tar.gz";
    sha256 = "3483d104a78c23f022474db6b693a48d1018d41cdca1b6c39d95b4274ec86262";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
