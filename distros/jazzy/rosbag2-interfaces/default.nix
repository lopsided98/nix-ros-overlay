
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-interfaces";
  version = "0.26.10-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_interfaces/0.26.10-2.tar.gz";
    name = "0.26.10-2.tar.gz";
    sha256 = "cdca762e19fd54adf741d72f80ba6ea5bfe0007c1ea334bb1f7cf2ddc8db27e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interface definitions for controlling rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
