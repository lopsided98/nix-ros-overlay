
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ublox-ubx-msgs";
  version = "0.3.5-r3";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/rolling/ublox_ubx_msgs/0.3.5-3.tar.gz";
    name = "0.3.5-3.tar.gz";
    sha256 = "bcf4dde70029b70274fee207a5ad71280eb2fa8f0c38e40db83dfd53abab4417";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''UBLOX UBX ROS2 Msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
