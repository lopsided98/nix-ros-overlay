
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-iron-rosidl-default-runtime";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/iron/rosidl_default_runtime/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "fab02125ddff210c6e3675df7c79215a388f096849d7e59fb3955ea4d3d0678c";
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
