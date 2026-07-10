
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-pyqt6, ament-cmake, ament-cmake-pytest, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-editor";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_editor/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "f5130f74663bd983995d5522421af2d577e4caa2cde5750f26bb6bf1d94c440b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ _unresolved_python3-pyqt6 python3Packages.tqdm rclpy yasmin yasmin-factory yasmin-plugins-manager ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Editor for YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
