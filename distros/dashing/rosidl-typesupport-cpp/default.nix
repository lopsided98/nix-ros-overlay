
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, poco, poco-vendor, rmw-implementation, rosidl-generator-c, rosidl-typesupport-c, rosidl-typesupport-connext-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidl-typesupport-opensplice-cpp }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/dashing/rosidl_typesupport_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "8237a49d6a76a548c7b91e7a5705f927cf8f06a239f28608fbc3bef48fe30876";
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
