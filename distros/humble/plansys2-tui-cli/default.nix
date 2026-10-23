
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-pygments, ament-copyright, ament-flake8, ament-pep257, plansys2-msgs, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-humble-plansys2-tui-cli";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_tui_cli/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "b8c3f7f843a2ed40732bb31a1fcd13c1388baf86498bbaae65e9607f78efe322";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ _unresolved_python3-pygments plansys2-msgs python3Packages.platformdirs python3Packages.rich python3Packages.typing-extensions rclpy ros2cli ];

  meta = {
    description = "PlanSys2 TUI (Textual) and ros2cli tools.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
