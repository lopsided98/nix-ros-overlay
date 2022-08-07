
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-humble-ros2run";
  version = "0.18.3-2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/humble/ros2run/0.18.3-2.tar.gz";
    name = "0.18.3-2.tar.gz";
    sha256 = "sha256-kNJstd3RD5c45thB4/B00XFxsJheXvQ/lYZLieUloEw=";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ros2cli ros2pkg ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
