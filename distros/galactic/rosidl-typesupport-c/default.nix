
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, mimick-vendor, performance-test-fixture, rcpputils, rcutils, rosidl-cli, rosidl-runtime-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-galactic-rosidl-typesupport-c";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/galactic/rosidl_typesupport_c/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "e03b8a4095c134d5853df211c6afd35f53c1c07e74a7b6f365622c85257a35cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-typesupport-introspection-c ];
  checkInputs = [ ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python rcpputils rcutils rosidl-cli rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
