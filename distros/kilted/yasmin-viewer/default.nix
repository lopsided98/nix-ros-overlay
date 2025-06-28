
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclpy, yasmin, yasmin-msgs, yasmin-ros }:
buildRosPackage {
  pname = "ros-kilted-yasmin-viewer";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_viewer/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "3bd32993e930eb7dd9b58b0f20088105129cbf179186b53f0ed9af6f894c0495";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.expiringdict python3Packages.flask python3Packages.waitress rclcpp rclpy yasmin yasmin-msgs yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN viewer for FSM";
    license = with lib.licenses; [ gpl3 ];
  };
}
