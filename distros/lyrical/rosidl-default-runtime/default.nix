
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-default-runtime";
  version = "1.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/lyrical/rosidl_default_runtime/1.8.1-3.tar.gz";
    name = "1.8.1-3.tar.gz";
    sha256 = "568c24ec8006add2e62ce83e094f84f68422e8870397ffc3b528f67aa6363c7d";
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
