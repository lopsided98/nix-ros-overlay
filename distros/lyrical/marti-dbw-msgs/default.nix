
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-dbw-msgs";
  version = "1.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_dbw_msgs/1.6.1-4.tar.gz";
    name = "1.6.1-4.tar.gz";
    sha256 = "f51bf0b3e8f6b752fff6c48dfa939531162e128ecb6cd50850510846e7eeda7e";
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
