
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-marti-introspection-msgs";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/humble/marti_introspection_msgs/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "3167cbc8b9b9e58f6e6479e94ffaa9fb351fb0375ba0ee8a406ca24bcdb99ee7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_introspection_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
