
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, rosidl-typesupport-c, rmw-implementation-cmake, ament-lint-common, ament-cmake, pythonPackages, python-cmake-module, rmw-implementation, rosidl-cmake, rosidl-parser, ament-index-python, ament-lint-auto, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-generator-py";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_python-release/archive/release/crystal/rosidl_generator_py/0.6.3-0.tar.gz;
    sha256 = "6afe8899ecf01ee8636a5afc1f970cc2ac3ceb992349a34f1887b722bb283947";
  };

  checkInputs = [ ament-cmake-pytest rosidl-typesupport-c pythonPackages.pytest rmw-implementation-cmake ament-lint-common python-cmake-module rmw-implementation rosidl-cmake rosidl-parser ament-index-python ament-lint-auto rmw rosidl-generator-c ];
  propagatedBuildInputs = [ rmw-implementation-cmake rmw-implementation rosidl-parser rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
