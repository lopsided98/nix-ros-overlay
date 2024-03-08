
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-mapviz-interfaces";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/mapviz_interfaces/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "f3d8a86afc28d3b42295f0ec71f33a9cab86166ec423d3447ff4d87f419aa773";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces marti-common-msgs rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''ROS interfaces used by Mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
