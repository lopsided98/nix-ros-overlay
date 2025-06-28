
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-polygon-msgs";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/kilted/polygon_msgs/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "32f048a6adda81c242fbf547243e77eb658cfba0569ff0e29b287168e9947405";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "General purpose two-dimensional polygons. Formerly a part of nav_2d_msgs";
    license = with lib.licenses; [ bsd3 ];
  };
}
