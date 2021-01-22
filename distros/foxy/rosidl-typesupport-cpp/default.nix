
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-connext-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-cpp";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/foxy/rosidl_typesupport_cpp/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "97f937673852d38c13355ccdfcb85236e86a7936dce48e81b8ffd2d9a973b86e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-connext-cpp rosidl-typesupport-introspection-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core rcpputils rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
