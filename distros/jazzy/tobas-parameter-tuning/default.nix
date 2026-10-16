
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-ros2-tools, tobas-ssh-client, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-parameter-tuning";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_parameter_tuning/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "9229730562d65185b8a74daf318399593f3194e799d1edb191aa871dca5767e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-dparam-client tobas-drone-core tobas-gui-common tobas-qt-tools tobas-ros2-tools tobas-ssh-client tobas-string-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for inspecting and tuning Tobas runtime parameters.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
