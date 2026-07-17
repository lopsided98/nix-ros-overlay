
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-rosidl-cli";
  version = "4.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_cli/4.9.8-1.tar.gz";
    name = "4.9.8-1.tar.gz";
    sha256 = "170f9fb0bc1138e2b1abb8b011f74a1d1856e24fc160bacd352f078da39b6c56";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete ];

  meta = {
    description = "Command line tools for ROS interface generation.";
    license = with lib.licenses; [ asl20 ];
  };
}
