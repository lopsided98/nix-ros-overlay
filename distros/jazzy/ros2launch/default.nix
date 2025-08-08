
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, launch-xml, launch-yaml, python3Packages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-jazzy-ros2launch";
  version = "0.26.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/jazzy/ros2launch/0.26.8-1.tar.gz";
    name = "0.26.8-1.tar.gz";
    sha256 = "544256e9e435e4eea86b2d717ba1025f24b83ed613c78677d2e6ca74a71ec6f4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
