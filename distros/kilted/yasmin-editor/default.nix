
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-kilted-yasmin-editor";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_editor/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "54f305a0b987a9ceaa68354a1fcd25a558b350db7072ae073b38a44a01403e34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  propagatedBuildInputs = [ python3Packages.lxml python3Packages.pyqt5 python3Packages.tqdm rclpy yasmin yasmin-factory ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Editor for YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
