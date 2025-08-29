
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-map-msgs";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/kilted/map_msgs/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "bb388d836d96979569d78922eae14b55515a8ecce7f3d031bcf9260e05b2e85d";
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
