
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-twist-mux-msgs";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux_msgs-release/archive/release/kilted/twist_mux_msgs/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "d68b1ad2f56f28eaca86baaaaf49575688afa2c3ac3f0a58aa938e82b2816407";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The twist_mux msgs and actions package";
    license = with lib.licenses; [ asl20 ];
  };
}
