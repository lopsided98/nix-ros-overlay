
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, std-msgs, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2msg";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2msg/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "3ed9f79d25dbb8ac74f966d687a434f6c5251617dc919e0b98e4a7c22ee2656b";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ std-srvs ament-xmllint pythonPackages.pytest ament-flake8 ament-pep257 std-msgs ament-copyright ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The msg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
