
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-urg-node-msgs";
  version = "1.0.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/iron/urg_node_msgs/1.0.1-7.tar.gz";
    name = "1.0.1-7.tar.gz";
    sha256 = "f5fadb81725a65498d0554bd02d3a43f3d1b501f4c97d160f7b4088bea58e47e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
