
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-udp-msgs";
  version = "0.0.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/jazzy/udp_msgs/0.0.3-7.tar.gz";
    name = "0.0.3-7.tar.gz";
    sha256 = "4140ccd710d0d3db26a002d47ae4508501d483b1144dd531b15608aacd0666c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS2 udp_msgs package";
    license = with lib.licenses; [ mit ];
  };
}
