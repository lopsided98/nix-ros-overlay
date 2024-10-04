
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-gui-vendor, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-gz-gui-plugins";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_gz_gui_plugins/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "2bc293ae5ae3ffef8fa8a9e5aed72bc104490e836eef92b4ebe2b8c88611aadd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-gui-vendor qt5.qtquickcontrols ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Gazebo Simulator GUI Plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
