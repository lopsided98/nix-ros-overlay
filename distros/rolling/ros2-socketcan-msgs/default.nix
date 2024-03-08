
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-socketcan-msgs";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/rolling/ros2_socketcan_msgs/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "001511fc5ac9c9d07e6cb443f089bf970f808cd24cc130b059b90d437cd72ca3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Messages for SocketCAN'';
    license = with lib.licenses; [ asl20 ];
  };
}
