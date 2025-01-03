
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-default-runtime";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/rolling/rosidl_default_runtime/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "3b2ba19c85c4c8db0181d7be3e28dc626b98edc2104222d8db7aec3b41b4a2da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-core-runtime service-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A configuration package defining the runtime for the ROS interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
