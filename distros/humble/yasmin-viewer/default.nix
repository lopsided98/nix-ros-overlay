
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages, rclcpp, rclpy, yasmin, yasmin-msgs, yasmin-ros }:
buildRosPackage {
  pname = "ros-humble-yasmin-viewer";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_viewer/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "24cb13317e117039dded56cc5601820235977b2b3c3d080dfd0738a498cd6a2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ python3Packages.expiringdict python3Packages.flask python3Packages.flask-socketio python3Packages.waitress rclcpp rclpy yasmin yasmin-msgs yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN viewer for FSM";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
