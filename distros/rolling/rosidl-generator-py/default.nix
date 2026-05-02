
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-mypy, ament-cmake-pep257, ament-cmake-pytest, ament-cmake-uncrustify, ament-index-python, ament-lint-auto, ament-lint-common, python3Packages, rmw, rosidl-buffer-py, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-c, rosidl-typesupport-fastrtps-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rpyutils, test-interface-files }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-py";
  version = "0.27.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_python-release/archive/release/rolling/rosidl_generator_py/0.27.2-2.tar.gz";
    name = "0.27.2-2.tar.gz";
    sha256 = "25d474c13299b1cf106f46f55ca05768ea857c20a21dab9e8fae010be64f2521";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-index-python ament-lint-auto ament-lint-common python3Packages.numpy python3Packages.pytest rmw rosidl-buffer-py rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-typesupport-c rosidl-typesupport-fastrtps-c rosidl-typesupport-introspection-c rpyutils test-interface-files ];
  propagatedBuildInputs = [ ament-cmake ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-mypy ament-cmake-pep257 ament-cmake-uncrustify ament-index-python python3Packages.numpy python3Packages.typing-extensions rmw rosidl-buffer-py rosidl-cli rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-c rosidl-typesupport-interface rpyutils ];
  nativeBuildInputs = [ ament-cmake ament-index-python rosidl-generator-c rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = "Generate the ROS interfaces in Python.";
    license = with lib.licenses; [ asl20 ];
  };
}
