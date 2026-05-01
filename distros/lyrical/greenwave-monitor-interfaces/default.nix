
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-greenwave-monitor-interfaces";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/greenwave_monitor-release/archive/release/lyrical/greenwave_monitor_interfaces/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "beaee42f13ceec4ae8bab865efd6f1c53dbbe6cf8579904de6ddca3429578358";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces for the greenwave_monitor package";
    license = with lib.licenses; [ asl20 ];
  };
}
