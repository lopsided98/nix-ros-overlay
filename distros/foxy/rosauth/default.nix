
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, launch-testing, openssl, rclcpp, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rosauth";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosauth-release/archive/release/foxy/rosauth/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e688341cb53f75dfe44ce9372e32aec7ee4ed0c468abe6adf0d00b2d69664962";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros openssl rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest launch-testing ];
  propagatedBuildInputs = [ rclcpp rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Server Side tools for Authorization and Authentication of ROS Clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
