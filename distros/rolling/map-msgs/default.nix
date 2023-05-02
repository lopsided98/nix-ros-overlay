
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-map-msgs";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/rolling/map_msgs/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "53d71b6e2a4e546fde2aa666d8b5508fd2f42d190297e5cfc7478a5ae53642d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
