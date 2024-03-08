
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, domain-coordinator, launch, launch-ros, launch-testing, launch-testing-ros, pythonPackages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2test";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/rolling/ros2test/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "3db3e67ee9ae48a87db09ae61dae662603a51f5c8b6903f2a47b3221ceef9f37";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ domain-coordinator launch launch-ros launch-testing launch-testing-ros ros2cli ];

  meta = {
    description = ''The test command for ROS 2 launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
