
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ouster-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/humble/ouster_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "2acc1982c15fbceab282e8e9aeed024b811fd38316e23316918479a6cbbe65e4";
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
