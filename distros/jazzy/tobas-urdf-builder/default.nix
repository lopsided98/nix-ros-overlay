
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, tobas-gui-common, tobas-property-server, tobas-qt-tools, tobas-rviz-wrapper, tobas-urdf-builder-plugin }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf-builder";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf_builder/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "24ce66f9ddde155b35240540f8f722784f279fe841b078eb28da5ea835410060";
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
