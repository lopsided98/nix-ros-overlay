
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, imu-filter-madgwick, interactive-marker-twist-server, jackal-description, joint-state-broadcaster, joint-trajectory-controller, joy, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-foxy-jackal-control";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_control/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ef3ce67ba7edcdbacde0cf6687a075491e55e5a0e5d8bd3b2bb58e8227bd88d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller imu-filter-madgwick interactive-marker-twist-server jackal-description joint-state-broadcaster joint-trajectory-controller joy robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
