
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, python3, rcpputils, rcutils, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-typesupport-c";
  version = "3.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/lyrical/rosidl_typesupport_c/3.4.2-3.tar.gz";
    name = "3.4.2-3.tar.gz";
    sha256 = "93e33d5ac6620e9ebfc9077d0530efc6763cf4cabb920854aa7ee89cea509744";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros-core python3 ];

  meta = {
    description = "Generate the type support for C messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
