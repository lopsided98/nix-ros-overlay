
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcpputils, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-connext-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-foxy-rosidl-typesupport-cpp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/foxy/rosidl_typesupport_cpp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "51c964f33694c022a803cbffef9f2d2f3e864540436f15014485f449e730017c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-connext-cpp rosidl-typesupport-introspection-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core rcpputils rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
