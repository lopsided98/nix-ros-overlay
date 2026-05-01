
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, fzf, python3Packages, rclpy, rmw-test-fixture-implementation, test-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2cli";
  version = "0.40.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/lyrical/ros2cli/0.40.7-1.tar.gz";
    name = "0.40.7-1.tar.gz";
    sha256 = "a72522f150f546f7403b8d077f2dd70a42a52b696d8c4efcb21dcc447c8e0e60";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest python3Packages.pytest-timeout rmw-test-fixture-implementation test-msgs ];
  propagatedBuildInputs = [ fzf python3Packages.argcomplete python3Packages.packaging python3Packages.psutil rclpy ];

  meta = {
    description = "Framework for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
