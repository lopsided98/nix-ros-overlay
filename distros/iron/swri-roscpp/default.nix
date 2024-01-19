
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, diagnostic-updater, gtest, marti-common-msgs, nav-msgs, rclcpp, ros-environment, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-swri-roscpp";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_roscpp/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "25d9f8bf4f03f5dc3a80b66b5d520d46d8ed2417a1361b216fc3d97f54f89cfe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest gtest ];
  propagatedBuildInputs = [ boost diagnostic-updater marti-common-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
