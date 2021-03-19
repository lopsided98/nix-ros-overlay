
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rosidl-runtime-py";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/foxy/rosidl_runtime_py/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "473cc66ae02a7bea0bcc51802a1d2547ae4fd13181370ceaa626e7a482b8b02f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
