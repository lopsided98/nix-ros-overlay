
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, python3, rcpputils, rcutils, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-c";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/rolling/rosidl_typesupport_c/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "c267241d214b24901cbeb3c27b27c71d5e90862458c0c0760e08911e524fac66";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-ros-core ament-index-python python3 rcpputils rcutils rosidl-cli rosidl-cmake rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros-core python3 ];

  meta = {
    description = "Generate the type support for C messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
