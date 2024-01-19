
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nao-command-msgs";
  version = "0.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/iron/nao_command_msgs/0.0.4-4.tar.gz";
    name = "0.0.4-4.tar.gz";
    sha256 = "7aaa11b1bf548bf08921c0a97943a0ba5157b1eada51e5bbd3ec6f6d4f279c84";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package defining command msgs to be sent to NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
