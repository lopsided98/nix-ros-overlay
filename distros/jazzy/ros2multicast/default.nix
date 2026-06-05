
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-jazzy-ros2multicast";
  version = "0.32.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/jazzy/ros2multicast/0.32.10-1.tar.gz";
    name = "0.32.10-1.tar.gz";
    sha256 = "4160b53455d6b05d8a97ef19f9f1fd9649efc66416ebf297ae3ee966c8f48eab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = "The multicast command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
