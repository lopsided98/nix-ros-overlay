
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-map-msgs";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/rolling/map_msgs/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "9d870fdd946636d3b5416cad338516808cb70104b97312c391a8eeecd342f07d";
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
