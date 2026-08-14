
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-plugins-manager, yasmin-ros }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-editor";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_editor/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "f9152d0bacfab6f41c06349adf31636fa53e0f150e2241454455880bb05eaff0";
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
