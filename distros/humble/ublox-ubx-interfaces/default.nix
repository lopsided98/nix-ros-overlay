
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-ublox-ubx-interfaces";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ublox_ubx_interfaces/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "02e2ec38df46ff35eff3ec71f6d56bab2c1c624ee7e099fdd9d2049d0f9e87ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "UBLOX UBX Interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
