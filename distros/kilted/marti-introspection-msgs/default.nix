
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-marti-introspection-msgs";
  version = "1.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/kilted/marti_introspection_msgs/1.6.1-2.tar.gz";
    name = "1.6.1-2.tar.gz";
    sha256 = "00fbd3c619bd291aa7117e0b5794501b6e427b5bd37f318e57b7a832d00c24f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_introspection_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
