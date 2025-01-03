
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-gui-vendor, qt5 }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-gz-gui-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_gz_gui_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "4ad4623f3586bcbe67f2ed9c64ea404f3776fc53c111f98ed80536e0d3057a64";
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
