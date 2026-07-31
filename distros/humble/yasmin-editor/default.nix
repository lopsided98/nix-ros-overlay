
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-plugins-manager, yasmin-ros }:
buildRosPackage {
  pname = "ros-humble-yasmin-editor";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_editor/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "bdad82650dd19cdde41dd12f5387c1fc57bd62c2458c59a362add9e967af411e";
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
