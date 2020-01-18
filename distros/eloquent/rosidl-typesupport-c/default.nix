
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, poco, poco-vendor, rmw-implementation, rosidl-generator-c, rosidl-typesupport-connext-c, rosidl-typesupport-interface, rosidl-typesupport-introspection-c, rosidl-typesupport-opensplice-c }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-c";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/eloquent/rosidl_typesupport_c/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "99d712b1eb22ea1b81431f22dd21fe62f27ef13986c57ab7ffaa31387dce6e29";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-connext-c rosidl-typesupport-introspection-c rosidl-typesupport-opensplice-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core poco poco-vendor rmw-implementation rosidl-generator-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
