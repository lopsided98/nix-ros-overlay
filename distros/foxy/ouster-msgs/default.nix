
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-ouster-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/ros2_ouster_drivers-release/archive/release/foxy/ouster_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9d2c2a5237fae91ade22094f6f1f5fc2baa2d57958185926f1210ea79c413a49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 messages for ouster lidar driver'';
    license = with lib.licenses; [ asl20 ];
  };
}
