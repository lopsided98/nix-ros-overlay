
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-rolling-rosidl-typesupport-introspection-c";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_typesupport_introspection_c/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "1d081cf7e079a83d0d15700bc3f49264a308ce9db3665df73f93f84eaf747169";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core python3 rosidl-generator-c rosidl-pycommon ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
