
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-ros, launch-xml, launch-yaml, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2launch";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/ros2launch/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "22d4fc70cb2b721560a07c6a132493870f648b8dc7a10f3258f9b0b082259797";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
