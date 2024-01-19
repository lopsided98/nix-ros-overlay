
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, base2d-kinematics-msgs, geometry-msgs, nav-2d-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-base2d-kinematics";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/metro_nav-release/archive/release/humble/base2d_kinematics/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e83e5959c457d97a44ebfac68b5489eb2b244fa67d1ea020f04fea49dce4d635";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ base2d-kinematics-msgs geometry-msgs nav-2d-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Implementation of simple kinematics in two and half dimensions'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
