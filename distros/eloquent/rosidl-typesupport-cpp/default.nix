
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, poco, poco-vendor, rmw-implementation, rosidl-generator-c, rosidl-typesupport-c, rosidl-typesupport-connext-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidl-typesupport-opensplice-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/eloquent/rosidl_typesupport_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "f57dde0792f12be1a8880fa410e2922694ebf6c7f02e32ade692525359be2f9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-connext-cpp rosidl-typesupport-introspection-cpp rosidl-typesupport-opensplice-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core poco poco-vendor rmw-implementation rosidl-generator-c rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
