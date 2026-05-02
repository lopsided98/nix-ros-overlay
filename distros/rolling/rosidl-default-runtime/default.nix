
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-default-runtime";
  version = "1.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/rolling/rosidl_default_runtime/1.8.1-2.tar.gz";
    name = "1.8.1-2.tar.gz";
    sha256 = "2e9a4ffc528b54347c78811b8adad6f4d80cb3e1a16994a9c5cefbb0e980d947";
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
