
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, andino-base, andino-description, controller-manager, diff-drive-controller, joint-state-broadcaster, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-andino-control";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_control/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "808403866629d4d840fc04d8b1522472009eec2eceddf3a525710420ec713575";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ];
  propagatedBuildInputs = [ andino-base andino-description controller-manager diff-drive-controller joint-state-broadcaster ros2controlcli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The andino_control package'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
