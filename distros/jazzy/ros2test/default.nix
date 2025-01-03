
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-jazzy-ros2test";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/jazzy/ros2test/0.6.0-3.tar.gz";
    name = "0.6.0-3.tar.gz";
    sha256 = "64a0a75e5569b5fc90869abb59b7c4de34c5d607f16d181039ea396f89a703bf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = "The test command for ROS 2 launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
