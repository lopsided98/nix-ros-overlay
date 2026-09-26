
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gui-common, tobas-property-server, tobas-qt-tools, tobas-rviz-wrapper, tobas-urdf-builder-plugin }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf-builder";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf_builder/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "7f95d52ec1e77d46dab7da26220b20d13652580ee5e17d6bd1048ddf0a8bd8a5";
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
