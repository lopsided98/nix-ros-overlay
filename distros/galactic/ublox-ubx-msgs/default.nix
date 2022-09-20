
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-ublox-ubx-msgs";
  version = "0.2.3-r4";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/galactic/ublox_ubx_msgs/0.2.3-4.tar.gz";
    name = "0.2.3-4.tar.gz";
    sha256 = "eb69525840403fb60e8661a4fbbe4032825ceba682b34df96293c869ee8fec2e";
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
