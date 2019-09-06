
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, launch-testing, launch, pythonPackages, ament-pep257, ament-copyright, launch-testing-ros, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2test";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/dashing/ros2test/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5b21dff82e6ba88ebca09ecf93ade17d1a340875c02770170b2ce2460a33b983";
  };

  buildType = "ament_python";
  buildInputs = [ launch-ros launch-testing launch launch-testing-ros ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ launch-ros launch-testing launch launch-testing-ros ros2cli ];

  meta = {
    description = ''The test command for ROS 2 launch tests.'';
    license = with lib.licenses; [ asl20 ];
  };
}
