
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosidl-default-runtime";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/rolling/rosidl_default_runtime/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "2651bb5762b20063c2426f41cc0e73e7d7771609adbd44a44dc30d3db9bea686";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-core-runtime service-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A configuration package defining the runtime for the ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
