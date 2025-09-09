
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-parser, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-humble-rosidl-typesupport-introspection-c";
  version = "3.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/humble/rosidl_typesupport_introspection_c/3.1.7-1.tar.gz";
    name = "3.1.7-1.tar.gz";
    sha256 = "3d8ce5306d74094a1f664bef1b130eff19c29a6b14e64848e84df4157c938124";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python python3 rosidl-cli rosidl-cmake rosidl-parser rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros python3 rosidl-cmake ];

  meta = {
    description = "Generate the message type support for dynamic message construction in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
