
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-polygon-msgs";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/lyrical/polygon_msgs/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "8831acbef3fd153f7a35b4842e36d4e44dd5a3260b2da35ff4993132301c7c94";
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
