
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, std-msgs, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage rec {
  pname = "ros-dashing-ros2srv";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2srv/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "84f4731210bd9492f823d7cbb990d93e1b7069f08081ddc99cdc832e89688616";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ std-srvs ament-xmllint pythonPackages.pytest ament-flake8 ament-pep257 std-msgs ament-copyright ];
  propagatedBuildInputs = [ ament-index-python ros2cli ];

  meta = {
    description = ''The srv command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
