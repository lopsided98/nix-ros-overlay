
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-bt-joy, controller-manager, diff-drive-controller, imu-filter-madgwick, interactive-marker-twist-server, joint-state-broadcaster, joint-trajectory-controller, joy-linux, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-control";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_control/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "26955cd652df70c97fe032af93639b175498757ca0aaf10a2d06a7dff9c7ca79";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-bt-joy controller-manager diff-drive-controller imu-filter-madgwick interactive-marker-twist-server joint-state-broadcaster joint-trajectory-controller joy-linux robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controllers for Clearpath Robotics platforms";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
