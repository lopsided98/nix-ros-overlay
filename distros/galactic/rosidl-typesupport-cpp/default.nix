
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rosidl-cli, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-galactic-rosidl-typesupport-cpp";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/galactic/rosidl_typesupport_cpp/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "af219c67c97b7fd145493e7737c47969196dfa98bff23ff6c567a83699778a04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-introspection-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python rcpputils rosidl-cli rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
