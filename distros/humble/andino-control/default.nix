
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, andino-base, andino-description, controller-manager, diff-drive-controller, joint-state-broadcaster, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-andino-control";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_control/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ab0e4d2a6fbac1b14ff3df09932bbcf08a4987f9c4b807cf6c096f40ccd592b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ andino-base andino-description controller-manager diff-drive-controller joint-state-broadcaster ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The andino_control package";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
