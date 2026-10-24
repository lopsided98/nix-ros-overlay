
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-kilted-ros2multicast";
  version = "0.38.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/kilted/ros2multicast/0.38.6-1.tar.gz";
    name = "0.38.6-1.tar.gz";
    sha256 = "696ac61f4c6cc4488ed78073878c018ac0d5d7c747673cc542a10c33b24deb08";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = "The multicast command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
