
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-mapviz-interfaces";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/mapviz_interfaces/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "fbe5e5b2e7dc49e0112755d56b38cce998568bd56d82eabf17aa6bcd55357fe4";
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
