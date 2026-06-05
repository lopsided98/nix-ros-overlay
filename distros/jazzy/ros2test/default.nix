
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-jazzy-ros2test";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/jazzy/ros2test/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "62e869bc7bb0d844a3ac34526375fe3851d5b0aa0a1c2bf4eb9146a51ddba81c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = "The test command for ROS 2 launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
