
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-lyrical-ros2test";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/lyrical/ros2test/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "ae3732b7aef5e7c305358117c082864d04239168cd362753fb344c6b65baf22f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = "The test command for ROS 2 launch tests.";
    license = with lib.licenses; [ asl20 ];
  };
}
