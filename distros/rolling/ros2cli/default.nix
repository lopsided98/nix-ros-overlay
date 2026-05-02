
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, fzf, python3Packages, rclpy, rmw-test-fixture-implementation, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2cli";
  version = "0.40.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2cli/0.40.6-2.tar.gz";
    name = "0.40.6-2.tar.gz";
    sha256 = "69e45da21c420084c82468374854c2c9d9c8f418009da4685a65f190f593fe96";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout rmw-test-fixture-implementation test-msgs ];
  propagatedBuildInputs = [ fzf python3Packages.argcomplete python3Packages.packaging python3Packages.psutil rclpy ];

  meta = {
    description = "Framework for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
