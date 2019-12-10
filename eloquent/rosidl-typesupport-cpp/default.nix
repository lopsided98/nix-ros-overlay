
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, ament-lint-auto, ament-lint-common, poco, poco-vendor, rmw-implementation, rosidl-generator-c, rosidl-typesupport-c, rosidl-typesupport-connext-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-cpp, rosidl-typesupport-opensplice-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-cpp";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/eloquent/rosidl_typesupport_cpp/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "13a3fb4c4f3a50db972ebfa963631032e7f03103499d93f30e9235bd394ea739";
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
