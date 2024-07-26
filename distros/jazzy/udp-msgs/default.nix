
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-udp-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/jazzy/udp_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "d58a514fa543be076fcd6ff8913205f6fed2fa05273dcd3f0e780c226db29719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS / ROS2 udp_msgs package";
    license = with lib.licenses; [ mit ];
  };
}
