
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ouster-msgs";
  version = "0.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/rolling/ouster_msgs/0.5.1-3.tar.gz";
    name = "0.5.1-3.tar.gz";
    sha256 = "fde132196d60c3d587859faa08e697a4bff90c56f2005e0df270fc62609f4bd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 messages for ouster lidar driver";
    license = with lib.licenses; [ asl20 ];
  };
}
