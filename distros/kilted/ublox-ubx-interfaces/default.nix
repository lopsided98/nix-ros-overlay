
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-ublox-ubx-interfaces";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/kilted/ublox_ubx_interfaces/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "b29042b6717bef4b598ffca3c3efa212e4a7836dff6e0f16a3d484840e942c06";
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
