
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, launch, launch-ros, magic-enum, robot-state-publisher, sensor-msgs, tobas-drone-msgs-adapter, tobas-git, tobas-gui-common, tobas-inja-vendor, tobas-kdl-parser, tobas-path-tools, tobas-property-client, tobas-property-server, tobas-qt-tools, tobas-rapidcsv-vendor, tobas-ros2-tools, tobas-rviz-plugin, tobas-rviz-wrapper, tobas-string-tools, tobas-uadf, tobas-urdf, tobas-visualization-msgs, tobas-xml-tools, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-tobas-setup-assistant";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_setup_assistant/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "1f0ff0bcd1bc1fd5c56d5198b11725d9d4dbe3b0e82bcdfe395d1a196f8e6235";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface launch launch-ros magic-enum robot-state-publisher sensor-msgs tobas-drone-msgs-adapter tobas-git tobas-gui-common tobas-inja-vendor tobas-kdl-parser tobas-path-tools tobas-property-client tobas-property-server tobas-qt-tools tobas-rapidcsv-vendor tobas-ros2-tools tobas-rviz-plugin tobas-rviz-wrapper tobas-string-tools tobas-uadf tobas-urdf tobas-visualization-msgs tobas-xml-tools visualization-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Qt setup assistant for configuring Tobas projects, vehicles, and runtime environments.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
