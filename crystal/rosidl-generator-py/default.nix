
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rmw-implementation, rosidl-cmake, rosidl-typesupport-interface, rosidl-typesupport-c, rmw-implementation-cmake, pythonPackages, ament-lint-common, ament-cmake, ament-lint-auto, python-cmake-module, rmw, ament-cmake-pytest, rosidl-generator-c, ament-index-python, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-generator-py";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/crystal/rosidl_generator_py/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "6afe8899ecf01ee8636a5afc1f970cc2ac3ceb992349a34f1887b722bb283947";
  };

  buildType = "ament_cmake";
  checkInputs = [ rosidl-cmake rosidl-generator-c rosidl-typesupport-c rmw-implementation-cmake ament-lint-common python-cmake-module rosidl-parser ament-cmake-pytest rmw rmw-implementation pythonPackages.pytest ament-index-python ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-c rosidl-typesupport-c rmw-implementation-cmake ament-cmake python-cmake-module rmw rmw-implementation ament-index-python rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
