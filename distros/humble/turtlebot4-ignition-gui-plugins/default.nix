
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gui6, ament-cmake, ament-lint-auto, ament-lint-common, qt5 }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-ignition-gui-plugins";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/humble/turtlebot4_ignition_gui_plugins/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "16940b03b3476451f3c2119962563d9d1fe12e8c9dc484a826bc3111fb8541fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_ignition-gui6 ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ qt5.qtquickcontrols ];
  nativeBuildInputs = [ _unresolved_ignition-gui6 ament-cmake ];

  meta = {
    description = "Turtlebot4 Ignition Simulator GUI Plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
