
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-kilted-ros2multicast";
  version = "0.38.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2multicast/0.38.1-1.tar.gz";
    name = "0.38.1-1.tar.gz";
    sha256 = "4fd13fdfcb735da815dd96beb902729ce0dd41b14c74ee90280352e1b8d55870";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = "The multicast command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
