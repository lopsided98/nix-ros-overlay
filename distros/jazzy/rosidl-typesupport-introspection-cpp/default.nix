
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-parser, rosidl-pycommon, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-interface, rosidl-typesupport-introspection-c }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-typesupport-introspection-cpp";
  version = "4.6.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/jazzy/rosidl_typesupport_introspection_cpp/4.6.5-1.tar.gz";
    name = "4.6.5-1.tar.gz";
    sha256 = "84ed90838b1d19d7d3d0cf44a2c15b081b0e7a7e14faba282826d71923240216";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-parser rosidl-pycommon rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-interface rosidl-typesupport-introspection-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros python3 rosidl-generator-c rosidl-generator-cpp rosidl-pycommon ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
