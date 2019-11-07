
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-xmllint, ament-flake8, pythonPackages, ament-pep257, std-msgs, ament-copyright, ament-index-python, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2srv";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2srv/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "6ce157b21f6b4ff5c4b1516aff80322c3f05da893db6f290372736c141f7e200";
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
