
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, python3Packages, rosidl-generator-c, rosidl-typesupport-c, rmw-implementation-cmake, pythonPackages, ament-lint-common, ament-cmake, python-cmake-module, rmw, ament-cmake-pytest, rosidl-parser, rmw-implementation, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-py";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_generator_py/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "3f4542d7f106ff2a3a88cbcfb9692c310d4866694b9566572b9cc9c5d8c6cc53";
  };

  buildType = "ament_cmake";
  checkInputs = [ rosidl-cmake rosidl-generator-c rosidl-typesupport-c rmw-implementation-cmake ament-lint-common python3Packages.numpy python-cmake-module rosidl-parser ament-cmake-pytest rmw rmw-implementation pythonPackages.pytest ament-index-python ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-c rosidl-typesupport-c rmw-implementation-cmake ament-cmake python3Packages.numpy python-cmake-module rmw rmw-implementation ament-index-python rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
