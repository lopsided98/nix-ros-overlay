
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, plansys2-msgs, python3Packages, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-tui-cli";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_tui_cli/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "4dfbe3bed8d5bf5936a085df3122bc12625f4c36d351df59519635d8ddb8f166";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ plansys2-msgs python3Packages.platformdirs python3Packages.rich rclpy ros2cli ];

  meta = {
    description = "PlanSys2 TUI (Textual) and ros2cli tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
