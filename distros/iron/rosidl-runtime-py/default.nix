
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python3Packages, pythonPackages, rosidl-parser, std-msgs, std-srvs, test-msgs }:
buildRosPackage {
  pname = "ros-iron-rosidl-runtime-py";
  version = "0.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_runtime_py-release/archive/release/iron/rosidl_runtime_py/0.12.0-2.tar.gz";
    name = "0.12.0-2.tar.gz";
    sha256 = "a064cc8173816f4dc017557d414af4a354370f7754e7d8e18930131c544255a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest std-msgs std-srvs test-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pyyaml rosidl-parser ];

  meta = {
    description = ''Runtime utilities for working with generated ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
