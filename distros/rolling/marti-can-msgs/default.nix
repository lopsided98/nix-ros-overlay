
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-marti-can-msgs";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/rolling/marti_can_msgs/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "5dd31a531d1e63a808175ae9ac8982ff9fa18127d2c263efd498be1ba4af27b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_can_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
