
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-typesupport-opensplice-cpp, rosidl-typesupport-interface, ament-cmake-ros, rosidl-generator-c, rosidl-typesupport-c, poco, poco-vendor, rosidl-typesupport-connext-cpp, ament-lint-common, rosidl-typesupport-introspection-cpp, ament-cmake-core, rmw-implementation, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/dashing/rosidl_typesupport_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "8237a49d6a76a548c7b91e7a5705f927cf8f06a239f28608fbc3bef48fe30876";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-opensplice-cpp poco poco-vendor rosidl-typesupport-connext-cpp rosidl-typesupport-introspection-cpp rosidl-generator-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-typesupport-interface rosidl-typesupport-c poco poco-vendor rmw-implementation ament-cmake-core rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
