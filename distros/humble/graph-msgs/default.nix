
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-graph-msgs";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/humble/graph_msgs/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "b715949f2f7db997521cac9fd8f61da7fc53fccf8e6c4394150fe0d41acac447";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
