
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-foxy-ros2launch";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/foxy/ros2launch/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "1ed537ffec0cae359ffbe196cb97b46eb317c4b97a170a256108794c2ee8d05b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros ros2cli ros2pkg ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
