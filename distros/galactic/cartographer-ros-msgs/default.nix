
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-cartographer-ros-msgs";
  version = "1.0.9003-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/galactic/cartographer_ros_msgs/1.0.9003-4.tar.gz";
    name = "1.0.9003-4.tar.gz";
    sha256 = "45e84683cb7572e9c6663c519e0195ea21f1a108a79d814045e3afc95765d7d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for the cartographer_ros package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
