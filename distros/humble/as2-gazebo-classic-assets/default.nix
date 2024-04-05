
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-humble-as2-gazebo-classic-assets";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_gazebo_classic_assets/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "fc75c4f52fec0eece3168a4296d4449da820825d14de5084bd2a31af01f78c03";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros-pkgs python3Packages.jinja2 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo classic resources";
    license = with lib.licenses; [ bsd3 ];
  };
}
