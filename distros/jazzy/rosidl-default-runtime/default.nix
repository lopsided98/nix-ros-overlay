
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosidl-default-runtime";
  version = "1.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/jazzy/rosidl_default_runtime/1.6.0-3.tar.gz";
    name = "1.6.0-3.tar.gz";
    sha256 = "4d35c258c2c758572695d7a6f2d453f13645ea43674b8b8f24be1511a2407c05";
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
