
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2test";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/rolling/ros2test/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "1315f2f2a2c0a5a43e31f2bfc99c3ebf8f70479062037bcac3ac5375bc009c0e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = "The test command for ROS 2 launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
