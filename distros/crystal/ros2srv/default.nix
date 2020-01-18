
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, pythonPackages, ros2cli, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-crystal-ros2srv";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2srv/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "e6eb8a7b8803ad26d1bc1a4661daf9126bdf9a84bd52a7a16e9fc4ce4ada9cd2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest std-msgs std-srvs ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The srv command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
