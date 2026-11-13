
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-robotis-interfaces";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotis_interfaces-release/archive/release/lyrical/robotis_interfaces/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "def988360da6be0ee52f73315b2a0d566e613a41b1857cdb1a9f7a30c721a4cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Custom interfaces for ROBOTIS Physical AI Lineup.";
    license = with lib.licenses; [ asl20 ];
  };
}
