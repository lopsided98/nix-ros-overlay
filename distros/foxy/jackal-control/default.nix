
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, interactive-marker-twist-server, jackal-description, joint-state-broadcaster, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-foxy-jackal-control";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_control/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "97eeb525177c0695441b562ef3773e83b019d1aeecd91d91030444490616f646";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server jackal-description joint-state-broadcaster joint-trajectory-controller joy robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
