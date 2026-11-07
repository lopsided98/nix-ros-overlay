
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-cli";
  version = "5.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_cli/5.2.2-1.tar.gz";
    name = "5.2.2-1.tar.gz";
    sha256 = "7362f7305e31be943cafa6995c9171722e2654871ce2e758abd42672a8d0345a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete ];

  meta = {
    description = "Command line tools for ROS interface generation.";
    license = with lib.licenses; [ asl20 ];
  };
}
