
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ros-testing, std-msgs, std-srvs, pythonPackages, ament-flake8, ament-xmllint, ros2cli, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-eloquent-ros2msg";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2msg/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "81eb2b04119fa6be77d31326bd6062d072d1379e2887bb67da08281a2433b4f7";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ros-testing ament-copyright std-msgs std-srvs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2cli ament-index-python ];

  meta = {
    description = ''The msg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
