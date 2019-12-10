
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, python-cmake-module, python3Packages, pythonPackages, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-c, rosidl-typesupport-interface, test-interface-files }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-generator-py";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/eloquent/rosidl_generator_py/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "6e35151a1c8de5e0e4a2de5db8edeed8529babec505fbe6191b3f9248b3b019d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python-cmake-module python3Packages.numpy pythonPackages.pytest rmw rmw-implementation rmw-implementation-cmake rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c test-interface-files ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python-cmake-module python3Packages.numpy rmw rmw-implementation rmw-implementation-cmake rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
