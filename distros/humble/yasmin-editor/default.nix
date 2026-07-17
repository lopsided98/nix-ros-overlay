
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, python3Packages, rclpy, ros-environment, yasmin, yasmin-factory, yasmin-plugins-manager }:
buildRosPackage {
  pname = "ros-humble-yasmin-editor";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_editor/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "7e44b5e05a13bd1d7f1354df2371e3f3b14cb183f374ea8e9721dd0c99703267";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ros-environment ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.pyqt5 python3Packages.tqdm rclpy yasmin yasmin-factory yasmin-plugins-manager ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Editor for YASMIN (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
