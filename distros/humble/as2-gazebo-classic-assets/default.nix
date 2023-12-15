
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros-pkgs, python3Packages, rclcpp }:
buildRosPackage {
  pname = "ros-humble-as2-gazebo-classic-assets";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_gazebo_classic_assets/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "346b24a443f1cdbf1e396f8b934a6f05f8d23c711b6c97bccb542e2048c028c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros-pkgs python3Packages.jinja2 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo classic resources'';
    license = with lib.licenses; [ bsd3 ];
  };
}
