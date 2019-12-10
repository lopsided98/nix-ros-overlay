
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, pythonPackages, ros-testing, ros2cli, rosidl-runtime-py, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-ros2interface";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2interface/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "52ae45dcee9398baaa939b18fdd7c4c578d402d8557012e61ca190c1c546fd32";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The interface command for ROS 2 command line tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
