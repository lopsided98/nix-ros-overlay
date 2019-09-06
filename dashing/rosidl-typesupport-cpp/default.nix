
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, poco, rosidl-typesupport-c, rosidl-typesupport-interface, ament-cmake-core, ament-lint-common, poco-vendor, rosidl-typesupport-opensplice-cpp, rmw-implementation, rosidl-typesupport-introspection-cpp, ament-cmake-ros, ament-lint-auto, rosidl-typesupport-connext-cpp, rosidl-generator-c }:
buildRosPackage rec {
  pname = "ros-dashing-rosidl-typesupport-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport-release/archive/release/dashing/rosidl_typesupport_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "8237a49d6a76a548c7b91e7a5705f927cf8f06a239f28608fbc3bef48fe30876";
  };

  buildType = "ament_cmake";
  buildInputs = [ poco poco-vendor rosidl-typesupport-opensplice-cpp rosidl-typesupport-introspection-cpp rosidl-typesupport-connext-cpp rosidl-generator-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco rosidl-typesupport-c ament-cmake-core rosidl-typesupport-interface poco-vendor rmw-implementation rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the type support for C++ messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
