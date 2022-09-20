
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, nav-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-map-msgs";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/galactic/map_msgs/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "07f161e26aa71453baddee561ac06ea31024fa585ecb28b42d909b79cf0f4bad";
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
