
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-cascade-lifecycle-msgs";
  version = "2.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cascade_lifecycle-release/archive/release/jazzy/cascade_lifecycle_msgs/2.0.7-1.tar.gz";
    name = "2.0.7-1.tar.gz";
    sha256 = "f5e8a74a339e953ccf776c2cd6e4b542e9422c3b9e4bd23d273d30cdaef8ca58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for rclcpp_cascade_lifecycle package";
    license = with lib.licenses; [ asl20 ];
  };
}
