
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, performance-test-fixture, python3, rcpputils, rcutils, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-typesupport-cpp";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/jazzy/rosidl_typesupport_cpp/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "0e9021ff53a9d614483c3d09f003b8f2499d927788b98a67f0f1ab113ec99fef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-introspection-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-generator-type-description rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros python3 ];

  meta = {
    description = "Generate the type support for C++ messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
