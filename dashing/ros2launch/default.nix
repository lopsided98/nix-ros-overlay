
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, launch, pythonPackages, ament-pep257, ament-copyright, ament-index-python, ros2pkg, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2launch";
  version = "0.8.5-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/ros2launch/0.8.5-1.tar.gz;
    sha256 = "3f7ad47aeb68419069ce4fa64310b2b6f59354417329f8f85b2500efd199833b";
  };

  buildType = "ament_python";
  buildInputs = [ launch-ros launch ament-index-python ros2pkg ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ launch-ros launch ament-index-python ros2pkg ros2cli ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
