
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, ament-copyright, ros2cli }:
buildRosPackage rec {
  pname = "ros-dashing-ros2multicast";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2multicast/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "a5c2fdf90447f78b38a5c64828a1fdbc3f19060fde7268a5cb5e3ce0d5f7c022";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ros2cli ];

  meta = {
    description = ''The multicast command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
