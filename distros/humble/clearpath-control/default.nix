
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mecanum-drive-controller, controller-manager, diff-drive-controller, imu-filter-madgwick, interactive-marker-twist-server, joint-state-broadcaster, joint-trajectory-controller, joy-linux, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-humble-clearpath-control";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_control/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c9b08863317b4c79d7453b795a48c22449a3185ffacacc1eb2b56af3391579eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-mecanum-drive-controller controller-manager diff-drive-controller imu-filter-madgwick interactive-marker-twist-server joint-state-broadcaster joint-trajectory-controller joy-linux robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controllers for Clearpath Robotics platforms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
