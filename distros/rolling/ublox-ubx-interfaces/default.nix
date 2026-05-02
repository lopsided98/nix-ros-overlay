
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-ublox-ubx-interfaces";
  version = "0.7.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ublox_ubx_interfaces/0.7.4-2.tar.gz";
    name = "0.7.4-2.tar.gz";
    sha256 = "164b30da650fcc5b533f5139ecd895e68b17dd17af919b1171fea1183611c4e7";
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
