
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2-socketcan-msgs";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/kilted/ros2_socketcan_msgs/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "fc98c3a1a07527b81f39bf01cd381ba1c43a7aa053ca38fd00ce3bad96f27001";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Messages for SocketCAN";
    license = with lib.licenses; [ asl20 ];
  };
}
