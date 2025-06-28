
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-marti-dbw-msgs";
  version = "1.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/kilted/marti_dbw_msgs/1.6.1-2.tar.gz";
    name = "1.6.1-2.tar.gz";
    sha256 = "eabd20f084450aca33d70301b1fe4a7048453f158f4eae0a649d039793296c6f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_dbw_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
