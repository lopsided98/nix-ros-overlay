
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, ament-cmake-ros, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-introspection-c";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_typesupport_introspection_c/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "df6436a23de281c53ca490d059dcb3452fc8cd7813b263b6bce43f7c90217e2f";
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
