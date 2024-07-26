
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, ros-gz-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-ign-interfaces";
  version = "0.244.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_interfaces/0.244.16-1.tar.gz";
    name = "0.244.16-1.tar.gz";
    sha256 = "e977686f7f2d0b98670b4057dd3a24079d550969b5e867fda511371552145b90";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs ros-gz-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Shim package to redirect to ros_gz_interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
