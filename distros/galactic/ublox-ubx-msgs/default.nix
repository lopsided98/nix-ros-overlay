
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-ublox-ubx-msgs";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/aussierobots/ublox_dgnss-release/archive/release/galactic/ublox_ubx_msgs/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "2365b8e3b8d8d71469e43f0beb050e557d0c20266f503503ad187a273c97302c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''UBLOX UBX ROS2 Msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
