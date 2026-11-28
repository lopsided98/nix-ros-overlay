
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-ros2-tools, tobas-ssh-client, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-parameter-tuning";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_parameter_tuning/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "50c138e40908338a26637d28f19a9351a92019663d40e53fa952028dfa4f774a";
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
