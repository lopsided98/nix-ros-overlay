
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, python3, rcpputils, rcutils, rosidl-cli, rosidl-generator-c, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-typesupport-c";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/jazzy/rosidl_typesupport_c/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "666a6693a350a3cd6d12c42c123d2c7688856c9d08e506c2957af03ce49e311a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rcpputils rcutils rosidl-cli rosidl-generator-c rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros python3 ];

  meta = {
    description = "Generate the type support for C messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
