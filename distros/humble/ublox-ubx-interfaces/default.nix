
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-ublox-ubx-interfaces";
  version = "0.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ublox_ubx_interfaces/0.4.4-1.tar.gz";
    name = "0.4.4-1.tar.gz";
    sha256 = "52f656c2fb8e21df24d355d35ce3b5e12ad401d4d48dcb08bedf6e5c3622aba5";
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
