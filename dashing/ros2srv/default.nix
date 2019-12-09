
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, std-msgs, std-srvs, pythonPackages, ament-flake8, ament-xmllint, ros2cli, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-dashing-ros2srv";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2srv/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "51cf1feb9c87d8c7079d622cb7dfebca2f31f517b972dc6b0cdd7cd0c5c7264d";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright std-msgs std-srvs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2cli ament-index-python ];

  meta = {
    description = ''The srv command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
