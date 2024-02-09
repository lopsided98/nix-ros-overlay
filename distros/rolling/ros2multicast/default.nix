
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2multicast";
  version = "0.31.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2multicast/0.31.1-1.tar.gz";
    name = "0.31.1-1.tar.gz";
    sha256 = "6948b0894f9b4c04c45134dceef2a2ebc05ed3030ebde05a16ea12042c903bab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
