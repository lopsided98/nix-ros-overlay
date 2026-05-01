
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-delphi-srr-msgs";
  version = "4.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/lyrical/delphi_srr_msgs/4.0.0-5.tar.gz";
    name = "4.0.0-5.tar.gz";
    sha256 = "55f8f708a0a981ea30d429c7f2311c8e5e636962682f92e19368867fb333929f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message definitions for the Delphi SRR";
    license = with lib.licenses; [ mit ];
  };
}
