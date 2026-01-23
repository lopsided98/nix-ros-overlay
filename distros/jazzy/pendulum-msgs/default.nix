
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-pendulum-msgs";
  version = "0.33.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/pendulum_msgs/0.33.9-1.tar.gz";
    name = "0.33.9-1.tar.gz";
    sha256 = "3d2406b168a05a5e230ce0db820fd0f581409e1305c1f238f1608385db7130f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Custom messages for real-time pendulum control.";
    license = with lib.licenses; [ asl20 ];
  };
}
