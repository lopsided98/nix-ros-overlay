
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-ublox-ubx-interfaces";
  version = "0.3.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ublox_ubx_interfaces/0.3.5-4.tar.gz";
    name = "0.3.5-4.tar.gz";
    sha256 = "8e4f6c17f50b5e8fca5385daa7516335273ca81d6285ac7d68f9a05b5d0143d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''UBLOX UBX Interfaces'';
    license = with lib.licenses; [ asl20 ];
  };
}
