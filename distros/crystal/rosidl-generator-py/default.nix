
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, python-cmake-module, pythonPackages, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-crystal-rosidl-generator-py";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/crystal/rosidl_generator_py/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "6afe8899ecf01ee8636a5afc1f970cc2ac3ceb992349a34f1887b722bb283947";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python-cmake-module pythonPackages.pytest rmw rmw-implementation rmw-implementation-cmake rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python-cmake-module rmw rmw-implementation rmw-implementation-cmake rosidl-cmake rosidl-generator-c rosidl-parser rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
