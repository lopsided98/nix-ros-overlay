
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-udp-msgs";
  version = "0.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/humble/udp_msgs/0.0.3-5.tar.gz";
    name = "0.0.3-5.tar.gz";
    sha256 = "ccecdb5df2ee885e2e3c2968edda71db4f3d3729be201a4be9c00061152a43ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 udp_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
