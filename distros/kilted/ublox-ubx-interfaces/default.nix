
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-ublox-ubx-interfaces";
  version = "0.5.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/kilted/ublox_ubx_interfaces/0.5.5-5.tar.gz";
    name = "0.5.5-5.tar.gz";
    sha256 = "4c7974867d8ee2795cb54cb7b4f6adc635040c654aad83444e77ee1b38f6d1b6";
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
