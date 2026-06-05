
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-default-runtime";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/jazzy/rosidl_default_runtime/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "435fb0cf9fb8912e39bc4808b0ea5a53a060e968e9c1060d92d7ec4636b0fb68";
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
