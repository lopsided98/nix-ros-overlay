
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, husky-description, interactive-marker-twist-server, joint-state-broadcaster, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-foxy-jackal-control";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_control/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7a103ac1f1047a79e2945b0849e894fbee1a8b57397dd8c23d6859a5da696033";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ controller-manager diff-drive-controller husky-description interactive-marker-twist-server joint-state-broadcaster joint-trajectory-controller joy robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
