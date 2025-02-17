
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-mecanum-drive-controller, controller-manager, diff-drive-controller, imu-filter-madgwick, interactive-marker-twist-server, joint-state-broadcaster, joint-trajectory-controller, joy-linux, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-humble-clearpath-control";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_control/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c9f2230e9f20fc9f21150cacdb0ea6b3b3471aa9266cacf6310a247d3de09011";
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
