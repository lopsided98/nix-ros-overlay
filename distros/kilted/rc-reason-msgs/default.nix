
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rc-common-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rc-reason-msgs";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_reason_clients-release/archive/release/kilted/rc_reason_msgs/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "e6a4ff92e4c201280329e23fd6eab2dce71d98ae5e3b1ad5917f39f7e2efcefe";
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
