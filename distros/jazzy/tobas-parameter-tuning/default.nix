
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-dparam-client, tobas-drone-core, tobas-gui-common, tobas-qt-tools, tobas-ros2-tools, tobas-ssh-client, tobas-string-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-parameter-tuning";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_parameter_tuning/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "006f4c7fa52f24eb8b6b04746ce6c86449b5832ad95892b0106d1293a86a1ade";
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
