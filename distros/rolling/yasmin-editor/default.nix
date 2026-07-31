
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-plugins-manager, yasmin-ros }:
buildRosPackage {
  pname = "ros-rolling-yasmin-editor";
  version = "6.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_editor/6.1.0-2.tar.gz";
    name = "6.1.0-2.tar.gz";
    sha256 = "006b6852d289da6dfd94cd49b49dc5510c80721c5c1e2e58619d411361d3ac88";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.pyqt6 python3Packages.tqdm rclpy yasmin yasmin-factory yasmin-plugins-manager yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Editor for YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
