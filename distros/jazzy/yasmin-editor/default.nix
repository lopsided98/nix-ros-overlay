
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-editor";
  version = "4.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_editor/4.2.2-1.tar.gz";
    name = "4.2.2-1.tar.gz";
    sha256 = "b689675ba06c100c2a4e9e38b86beeca5123beb7fce02a0b3d802d63f3b81476";
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
