
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, cv-bridge, eigen, geometric-shapes, image-geometry, moveit-calibration-plugins, moveit-core, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-visualization, moveit-visual-tools, pkg-config, pluginlib, qt5, rosconsole, roscpp, rostest, rviz, rviz-visual-tools, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-calibration-gui";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/JStech/moveit_calibration-release/archive/release/noetic/moveit_calibration_gui/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6578848f9cbc27af349c82a0e7dd87d5cbcc832441ed133d5c49df02314988fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin class-loader eigen image-geometry pkg-config qt5.qtbase ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge geometric-shapes moveit-calibration-plugins moveit-core moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-visualization moveit-visual-tools pluginlib rosconsole roscpp rviz rviz-visual-tools tf2-eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''MoveIt calibration gui'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
