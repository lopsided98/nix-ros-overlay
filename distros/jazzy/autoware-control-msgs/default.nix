
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-autoware-control-msgs";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/jazzy/autoware_control_msgs/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "5d295d5f1e29cd26809b88d15c86a80dd447503cf9bc69ba8e14d1b23583a34f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware control messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
