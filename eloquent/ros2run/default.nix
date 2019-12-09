
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ros2pkg, ament-xmllint, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2run";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2run/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "e31e43a6147462b737ef5b10ee117916cbf91707f7aa2377ad15c357dd7b5157";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2pkg ros2cli ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
