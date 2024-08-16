
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geographic-msgs, geometry-msgs, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-marti-nav-msgs";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_nav_msgs/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "2f131ade7a0870e9950e0f5f6c080f456839ef3ca66fde7a0cad19fc165d76ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geographic-msgs geometry-msgs marti-common-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_nav_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
