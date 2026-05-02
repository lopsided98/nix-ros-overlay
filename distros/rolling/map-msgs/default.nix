
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-map-msgs";
  version = "2.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/rolling/map_msgs/2.6.0-2.tar.gz";
    name = "2.6.0-2.tar.gz";
    sha256 = "59506730c426cfffac34943d55a68efd9b5be1bfc51d7ab0d335b80ddf700e42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package defines messages commonly used in mapping packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
