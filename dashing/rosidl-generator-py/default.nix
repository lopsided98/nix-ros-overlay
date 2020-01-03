
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, python-cmake-module, python3Packages, pythonPackages, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-py";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_generator_py/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "3f4542d7f106ff2a3a88cbcfb9692c310d4866694b9566572b9cc9c5d8c6cc53";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python-cmake-module python3Packages.numpy pythonPackages.pytest rmw rmw-implementation rmw-implementation-cmake rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python-cmake-module python3Packages.numpy rmw rmw-implementation rmw-implementation-cmake rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
