
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-kilted-rosidl-typesupport-introspection-c";
  version = "4.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/kilted/rosidl_typesupport_introspection_c/4.9.5-1.tar.gz";
    name = "4.9.5-1.tar.gz";
    sha256 = "6545ac41765dea559996409bb9ad1e3557cb22067ecb7fd287f4210e8fd44bb2";
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
