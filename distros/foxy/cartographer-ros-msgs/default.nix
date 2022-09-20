
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-cartographer-ros-msgs";
  version = "1.0.9003-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/foxy/cartographer_ros_msgs/1.0.9003-1.tar.gz";
    name = "1.0.9003-1.tar.gz";
    sha256 = "69a4899d3415f634ba49083b94ae568bac2b87daea5613e2ae8a3aece5dd9761";
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
