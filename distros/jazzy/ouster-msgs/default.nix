
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ouster-msgs";
  version = "0.5.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/jazzy/ouster_msgs/0.5.1-5.tar.gz";
    name = "0.5.1-5.tar.gz";
    sha256 = "1979ca3ea44b77963231e5077bd8f6b0bbf896038240a3beed7cb99c8948096f";
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
