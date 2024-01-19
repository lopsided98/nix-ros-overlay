
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-twist-mux-msgs";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux_msgs-release/archive/release/rolling/twist_mux_msgs/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "22e1ea6473d541c8010735fe004a6a4b5d9ec1a94d20a9e4232ecbe5e0d959af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The twist_mux msgs and actions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
