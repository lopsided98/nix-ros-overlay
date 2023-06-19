
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-iron-rosidl-typesupport-introspection-cpp";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_typesupport_introspection_cpp/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "8d976837aae0231f8d685c429dbd0f5621a0921481feaaf860dd06dd2f912d76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface rosidl-typesupport-introspection-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros python3 rosidl-generator-c rosidl-generator-cpp rosidl-pycommon ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
