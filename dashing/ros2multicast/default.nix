
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ament-xmllint, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-ros2multicast";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2multicast/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "9e2a33956ae6dbe428faebf7f39f2739e2ef5f9b33c514a96e29cb5610d034be";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
