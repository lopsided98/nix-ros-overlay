
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ouster-msgs";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/rolling/ouster_msgs/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "43c9d6ee91c569e5860e0becf479bc512d888c06fc0286f5c3ae631272aa974b";
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
