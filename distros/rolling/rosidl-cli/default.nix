
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-rosidl-cli";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_cli/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "8403cae8ea1c7b34e94f0f0503f2262db5227b0058c2f5b27a06d3418cb62a7e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.argcomplete python3Packages.importlib-metadata ];

  meta = {
    description = ''Command line tools for ROS interface generation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
