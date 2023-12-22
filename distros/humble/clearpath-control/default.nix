
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, diff-drive-controller, imu-filter-madgwick, interactive-marker-twist-server, joint-state-broadcaster, joint-trajectory-controller, joy-linux, robot-localization, robot-state-publisher, teleop-twist-joy, twist-mux }:
buildRosPackage {
  pname = "ros-humble-clearpath-control";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_control/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "29a344eb02764c1b8188beb2ff12d20da79c1a97377288b758d54d67fad95f16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller imu-filter-madgwick interactive-marker-twist-server joint-state-broadcaster joint-trajectory-controller joy-linux robot-localization robot-state-publisher teleop-twist-joy twist-mux ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controllers for Clearpath Robotics platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
