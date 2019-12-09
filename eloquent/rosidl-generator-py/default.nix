
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, python3Packages, rosidl-generator-c, rosidl-typesupport-c, rmw-implementation-cmake, pythonPackages, ament-lint-common, ament-cmake, python-cmake-module, rmw, ament-cmake-pytest, rosidl-parser, rmw-implementation, test-interface-files, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-generator-py";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/eloquent/rosidl_generator_py/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "6e35151a1c8de5e0e4a2de5db8edeed8529babec505fbe6191b3f9248b3b019d";
  };

  buildType = "ament_cmake";
  checkInputs = [ rosidl-cmake rosidl-generator-c rosidl-typesupport-c rmw-implementation-cmake pythonPackages.pytest ament-lint-common python3Packages.numpy python-cmake-module rosidl-parser ament-cmake-pytest rmw rmw-implementation test-interface-files ament-index-python ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-c rosidl-typesupport-c rmw-implementation-cmake ament-cmake python3Packages.numpy python-cmake-module rmw rmw-implementation ament-index-python rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
