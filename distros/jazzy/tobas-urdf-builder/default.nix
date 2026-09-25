
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gui-common, tobas-property-server, tobas-qt-tools, tobas-rviz-wrapper, tobas-urdf-builder-plugin }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf-builder";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf_builder/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "6b65aa50dac113c85c2a6b1539e1e472e7419528b119c6b6fbdcca236d63568d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-gui-common tobas-property-server tobas-qt-tools tobas-rviz-wrapper tobas-urdf-builder-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for interactively building and editing URDF robot models.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
