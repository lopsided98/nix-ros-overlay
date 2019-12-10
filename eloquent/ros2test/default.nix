
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-eloquent-ros2test";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/eloquent/ros2test/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "cd4755b3ca02547f41df06c4ff4bc9bc94eb0d5f27af3b94a3c7b9de837628e8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = ''The test command for ROS 2 launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
