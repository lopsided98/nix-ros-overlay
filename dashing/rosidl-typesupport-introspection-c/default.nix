
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, ament-cmake-ros, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-introspection-c";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_typesupport_introspection_c/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "417a32362cecedea22f15c8c50f2a05d36a73082f091e066fb70b87bc3c8a1e3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-parser rosidl-generator-c rosidl-cmake ament-cmake ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
