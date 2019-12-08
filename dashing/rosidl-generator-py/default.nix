
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, rosidl-typesupport-c, ament-cmake, rmw-implementation-cmake, ament-lint-common, rosidl-typesupport-interface, pythonPackages, python3Packages, python-cmake-module, rmw-implementation, rosidl-cmake, rosidl-parser, ament-index-python, ament-lint-auto, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-py";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_generator_py/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "3f4542d7f106ff2a3a88cbcfb9692c310d4866694b9566572b9cc9c5d8c6cc53";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest rosidl-typesupport-c pythonPackages.pytest rmw-implementation-cmake ament-lint-common python3Packages.numpy python-cmake-module rmw-implementation rosidl-cmake rosidl-parser ament-index-python ament-lint-auto rmw rosidl-generator-c ];
  propagatedBuildInputs = [ rosidl-typesupport-c ament-cmake rmw-implementation-cmake rosidl-typesupport-interface python-cmake-module rmw-implementation rosidl-cmake rosidl-parser ament-index-python python3Packages.numpy rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
