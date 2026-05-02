
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, launch, launch-testing, launch-testing-ros, python3Packages, ros2cli }:
buildRosPackage {
  pname = "ros-rolling-ros2pkg";
  version = "0.40.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/rolling/ros2pkg/0.40.6-2.tar.gz";
    name = "0.40.6-2.tar.gz";
    sha256 = "caabb1efbd0009729c8e230b4a6055797f967aae4ba5721b1c52922277f2e0da";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 ament-xmllint launch launch-testing launch-testing-ros python3Packages.pytest python3Packages.pytest-timeout ];
  propagatedBuildInputs = [ ament-copyright ament-index-python python3Packages.catkin-pkg python3Packages.empy ros2cli ];

  meta = {
    description = "The pkg command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
