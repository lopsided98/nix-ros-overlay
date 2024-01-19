
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, python-cmake-module, python3Packages, pythonPackages, rmw, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-fastrtps-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rpyutils, test-interface-files }:
buildRosPackage {
  pname = "ros-humble-rosidl-generator-py";
  version = "0.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/humble/rosidl_generator_py/0.14.4-1.tar.gz";
    name = "0.14.4-1.tar.gz";
    sha256 = "c42bf0238f4f0c9d753d5ef6e28c8d75897d65b225277d9d47ad178752d3288e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python-cmake-module python3Packages.numpy pythonPackages.pytest rmw rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-typesupport-c rosidl-typesupport-fastrtps-c rosidl-typesupport-introspection-c rpyutils test-interface-files ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python-cmake-module python3Packages.numpy rmw rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser rosidl-runtime-c rosidl-typesupport-c rosidl-typesupport-interface rpyutils ];
  nativeBuildInputs = [ ament-cmake ament-index-python python-cmake-module rosidl-cmake rosidl-generator-c rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = ''Generate the ROS interfaces in Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
