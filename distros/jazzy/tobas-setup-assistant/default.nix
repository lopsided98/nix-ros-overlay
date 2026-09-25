
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, magic-enum, sensor-msgs, tobas-drone-msgs-adapter, tobas-git, tobas-gui-common, tobas-inja-vendor, tobas-kdl-parser, tobas-path-tools, tobas-property-client, tobas-property-server, tobas-qt-tools, tobas-rapidcsv-vendor, tobas-ros2-tools, tobas-rviz-plugin, tobas-rviz-wrapper, tobas-string-tools, tobas-uadf, tobas-urdf, tobas-visualization-msgs, tobas-xml-tools, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-tobas-setup-assistant";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_setup_assistant/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "15289b55f9e7f9ea8a5a62dc7c7deb50593500036f464e426a31886b7f62c527";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface magic-enum sensor-msgs tobas-drone-msgs-adapter tobas-git tobas-gui-common tobas-inja-vendor tobas-kdl-parser tobas-path-tools tobas-property-client tobas-property-server tobas-qt-tools tobas-rapidcsv-vendor tobas-ros2-tools tobas-rviz-plugin tobas-rviz-wrapper tobas-string-tools tobas-uadf tobas-urdf tobas-visualization-msgs tobas-xml-tools visualization-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt setup assistant for configuring Tobas projects, vehicles, and runtime environments.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
