
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-gps-msgs";
  version = "2.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/kilted/gps_msgs/2.0.5-2.tar.gz";
    name = "2.0.5-2.tar.gz";
    sha256 = "e376678d6655dd17c0f30717044dfab0611e921ae1dd8448712f4c2757693e01";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "GPS messages for use in GPS drivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
