
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-tf2-msgs";
  version = "0.31.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/iron/tf2_msgs/0.31.3-1.tar.gz";
    name = "0.31.3-1.tar.gz";
    sha256 = "b49b11162862ba7cbf17ebf55da1abd15cda486f6a5081bb1f17718b6afe6323";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''tf2_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}