
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, tobas-gui-common, tobas-property-server, tobas-qt-tools, tobas-rviz-wrapper, tobas-urdf-builder-plugin }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf-builder";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf_builder/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "892fc99c82d3d3e9497c7e2302d2d01cda8959313ca06336882c6e9ae3e9f0d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch launch-ros tobas-gui-common tobas-property-server tobas-qt-tools tobas-rviz-wrapper tobas-urdf-builder-plugin ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt application for interactively building and editing URDF robot models.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
