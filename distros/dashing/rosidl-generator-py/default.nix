
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, python-cmake-module, python3Packages, pythonPackages, rmw, rmw-implementation, rmw-implementation-cmake, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-py";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/rosidl_generator_py/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "12312da2d494acff8adad134d3e0c861113bd90ff688eb51835037816cf2e2d6";
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
