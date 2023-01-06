
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-introspection-c";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_typesupport_introspection_c/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "22d64c681389dff0f3b363b4ff5efc2f3ce9c30a0d11c1ae1c9bdc1b13556e93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros python3 rosidl-pycommon ];

  meta = {
    description = ''Generate the message type support for dynamic message construction in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
