
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-kilted-ros2test";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/kilted/ros2test/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "f6f060eef9707c71cad1bc1b41d29824e22178e26e5e1d2c7e190f4a708a930f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = "The test command for ROS 2 launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
