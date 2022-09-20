
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-udp-msgs";
  version = "0.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/udp_msgs-release/archive/release/galactic/udp_msgs/0.0.3-3.tar.gz";
    name = "0.0.3-3.tar.gz";
    sha256 = "525b864535921ef9692b9139de43be94af9c166f87e69bded761fc74e5bacbc2";
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
