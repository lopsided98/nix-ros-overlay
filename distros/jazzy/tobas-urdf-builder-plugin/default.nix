
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rviz-common, rviz-default-plugins, rviz-rendering, tobas-constants, tobas-property-client, tobas-qt-tools, tobas-ros2-tools, tobas-std-tools, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-urdf-builder-plugin";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_urdf_builder_plugin/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "35d8b442bd755eb087cdb1256ec5477d6ad67667a456a4901fee81a77ca888ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rviz-common rviz-default-plugins rviz-rendering tobas-constants tobas-property-client tobas-qt-tools tobas-ros2-tools tobas-std-tools tobas-urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz panel plugin for interactively building and editing URDF robot models.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
