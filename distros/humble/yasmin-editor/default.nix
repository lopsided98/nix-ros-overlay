
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-plugins-manager, yasmin-ros }:
buildRosPackage {
  pname = "ros-humble-yasmin-editor";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_editor/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "62daa3a97b4fda5ca51404b349ce03536975d4bfbac052e39e10a602197a8cd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.tqdm rclpy yasmin yasmin-factory yasmin-plugins-manager yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Editor for YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
