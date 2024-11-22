
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2multicast";
  version = "0.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2multicast/0.36.0-1.tar.gz";
    name = "0.36.0-1.tar.gz";
    sha256 = "c1e3f813d2096d540413e5c41aa1b9cbcae90e688ddc2b4d74bdbd5462395d62";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest-timeout pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = "The multicast command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
