
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-lifecycle-msgs";
  version = "2.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/lyrical/lifecycle_msgs/2.4.5-1.tar.gz";
    name = "2.4.5-1.tar.gz";
    sha256 = "0462d11f54bbc7c9792105ae7a785def0ed5c12aa92c80e3b9f47e7ccbf89081";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some lifecycle related message and service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
