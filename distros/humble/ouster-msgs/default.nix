
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ouster-msgs";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_ouster_drivers-release/archive/release/humble/ouster_msgs/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "c13d2755871eb976e8a8da6b67f2dcd72b27a7533885d483b821489bbec09253";
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
