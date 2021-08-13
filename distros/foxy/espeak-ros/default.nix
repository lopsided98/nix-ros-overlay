
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, espeak, espeak-interfaces, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-espeak-ros";
  version = "0.1.0-r6";

  src = fetchurl {
    url = "https://gitlab.com/espeak-ros2/espeak-ros2-release/-/archive/release/foxy/espeak_ros/0.1.0-6/espeak-ros2-release-release-foxy-espeak_ros-0.1.0-6.tar.gz";
    name = "espeak-ros2-release-release-foxy-espeak_ros-0.1.0-6.tar.gz";
    sha256 = "9be64de8d00cc217a13aaa3eceab87f09ef4bbfe23b2356540720f5d0df84ced";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ espeak espeak-interfaces ];

  meta = {
    description = ''ROS interface to the `espeak` command line tool.'';
    license = with lib.licenses; [ mit ];
  };
}
