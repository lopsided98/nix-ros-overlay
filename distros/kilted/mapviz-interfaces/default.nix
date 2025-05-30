
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-mapviz-interfaces";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/mapviz_interfaces/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "e699e301fba0b1ee34a5e481cd0a110daae87be8c6b185f112a74882ada0bf1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces marti-common-msgs rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS interfaces used by Mapviz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
