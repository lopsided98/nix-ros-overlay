
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory }:
buildRosPackage {
  pname = "ros-humble-yasmin-editor";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_editor/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "f3e49e531ba2b49708b8e802bb3b7ff97cd8a270df15e3e3641ec8affb04cd0f";
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
