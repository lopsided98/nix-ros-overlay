
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, performance-test-fixture, python3, rcpputils, rcutils, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-kilted-rosidl-typesupport-cpp";
  version = "3.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/kilted/rosidl_typesupport_cpp/3.3.3-2.tar.gz";
    name = "3.3.3-2.tar.gz";
    sha256 = "0e3e64e7c8702f17258feaad139cb6b3bda3877e88806b499949f7edd79814c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core rosidl-typesupport-introspection-cpp ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-generator-type-description rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros-core python3 ];

  meta = {
    description = "Generate the type support for C++ messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
