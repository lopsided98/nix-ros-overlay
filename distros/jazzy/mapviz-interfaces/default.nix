
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-mapviz-interfaces";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz_interfaces/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "d43aa11e7197e98924a7c2a702e2f691afdebae08f42c408c6d352f0cd69dcef";
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
