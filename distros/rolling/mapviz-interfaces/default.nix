
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-mapviz-interfaces";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/mapviz_interfaces/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "7f8e8dcc3b24992f6206a4193da214a7f24320fe09059ab110eddfb21ab9e356";
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
