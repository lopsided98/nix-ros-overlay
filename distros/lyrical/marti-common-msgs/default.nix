
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-common-msgs";
  version = "1.6.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_common_msgs/1.6.1-4.tar.gz";
    name = "1.6.1-4.tar.gz";
    sha256 = "3241d20f0f8ac3d75205696d1ccce3816759eb417862e87848d80a0838eaa07e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_common_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
