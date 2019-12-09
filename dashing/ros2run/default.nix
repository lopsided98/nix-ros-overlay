
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ros2pkg, ament-xmllint, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-ros2run";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2run/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "ad32899334d8f1732500ad9a13854891db06fd2b3a0d1efb0d2afb058571b54b";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2pkg ros2cli ];

  meta = {
    description = ''The run command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
