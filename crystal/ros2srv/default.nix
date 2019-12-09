
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, std-srvs, pythonPackages, ament-flake8, ros2cli, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-crystal-ros2srv";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/crystal/ros2srv/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "e6eb8a7b8803ad26d1bc1a4661daf9126bdf9a84bd52a7a16e9fc4ce4ada9cd2";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright std-msgs std-srvs ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2cli ament-index-python ];

  meta = {
    description = ''The srv command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
