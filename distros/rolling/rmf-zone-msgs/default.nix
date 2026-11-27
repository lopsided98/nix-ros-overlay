
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-zone-msgs";
  version = "4.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_zone_msgs/4.3.0-2.tar.gz";
    name = "4.3.0-2.tar.gz";
    sha256 = "5f4bb86077718f02d7c8d4bcdc4374524fe4deb4a75e48a41acd03616935ec72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used to coordinate zone bookings between robots and the zone manager in rmf_core";
    license = with lib.licenses; [ asl20 ];
  };
}
