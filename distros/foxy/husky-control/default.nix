
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, husky-description, imu-filter-madgwick, interactive-marker-twist-server, joint-state-broadcaster, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-foxy-husky-control";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_control/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "885573fcb0d1e63219747c38757d1965669f205e2f490b12c84cb8b46b01e175";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller husky-description imu-filter-madgwick interactive-marker-twist-server joint-state-broadcaster joint-trajectory-controller joy robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky controller configurations'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
