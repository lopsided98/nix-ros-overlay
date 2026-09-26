
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qt5, rviz-common, rviz-default-plugins, rviz-rendering, tobas-constants, tobas-property-client, tobas-qt-tools, tobas-ros2-tools, tobas-std-tools, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf-builder-plugin";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf_builder_plugin/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "16dbffdd74f50aa8733eb8fbaa09c641fff5389f5d5763a6292600a5f50cc5bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qt5.qtbase rviz-common rviz-default-plugins rviz-rendering tobas-constants tobas-property-client tobas-qt-tools tobas-ros2-tools tobas-std-tools tobas-urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz panel plugin for interactively building and editing URDF robot models.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
