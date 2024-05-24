
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rc-common-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rc-reason-msgs";
  version = "0.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/jazzy/rc_reason_msgs/0.3.1-3.tar.gz";
    name = "0.3.1-3.tar.gz";
    sha256 = "1dc2d25cfa0601fe855146ecb193eead3d51d588120721cc953474abaf353439";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rc-common-msgs rosidl-default-runtime shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Msg and srv definitions for rc_reason_clients";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
