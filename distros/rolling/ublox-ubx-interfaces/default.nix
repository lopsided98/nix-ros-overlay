
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-ublox-ubx-interfaces";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ublox_ubx_interfaces/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "5367c1ed50cee40afedba1fd30e8266b8926754e2ebf5046c0cb1d426d61107f";
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
