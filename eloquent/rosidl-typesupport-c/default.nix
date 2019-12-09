
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-interface, ament-cmake-ros, rosidl-generator-c, poco, rosidl-typesupport-opensplice-c, poco-vendor, ament-lint-common, rosidl-typesupport-introspection-c, ament-cmake-core, rosidl-typesupport-connext-c, rmw-implementation, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-c";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/eloquent/rosidl_typesupport_c/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "99d712b1eb22ea1b81431f22dd21fe62f27ef13986c57ab7ffaa31387dce6e29";
  };

  buildType = "ament_cmake";
  buildInputs = [ poco rosidl-typesupport-opensplice-c poco-vendor rosidl-typesupport-introspection-c rosidl-typesupport-connext-c rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-interface poco poco-vendor rmw-implementation ament-cmake-core rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
