
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, pythonPackages, ros2cli, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-ros2msg";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2msg/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "674ffd4c65a7ebe6b6f76d0b59b87eff7371b42b66a3a281f1fd5e811b5eff5e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The msg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
