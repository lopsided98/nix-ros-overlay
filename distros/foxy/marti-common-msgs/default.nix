
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-marti-common-msgs";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/foxy/marti_common_msgs/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "bbe4877586f2241ad4135ce654859ab734a9ae4fbecd599bd33f9651398ece1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_common_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
