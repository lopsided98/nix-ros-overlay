
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, pythonPackages, ament-pep257, ament-copyright, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2multicast";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2multicast/0.6.3-0.tar.gz;
    sha256 = "67d000324c650eb131df4570d3f89287c4f5b5a70d9c52dd62c995c09760a22f";
  };

  buildInputs = [ ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
