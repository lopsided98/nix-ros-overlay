
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ouster-msgs";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/humble/ouster_msgs/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "1f8ccc891b9d5e1f11c155feb3c4f43e53e5d7c4c6a224c8639cb10291b65def";
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
