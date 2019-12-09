
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rosidl-default-runtime, openssl, rosidl-default-generators, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rosauth";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosauth-release/archive/release/dashing/rosauth/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "755e63eed157721aee661d6fb133417c9826f82291b32fe875f72448fa0ca542";
  };

  buildType = "ament_cmake";
  buildInputs = [ openssl rclcpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rosidl-default-runtime rclcpp ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake-ros ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
