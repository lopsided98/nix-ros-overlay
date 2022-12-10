
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, diagnostic-updater, gtest, marti-common-msgs, nav-msgs, rclcpp, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-swri-roscpp";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/foxy/swri_roscpp/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "9a672dd7025a6c7411887091898f1e4b1a6207a255954b940aac68b14a77f982";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest gtest ];
  propagatedBuildInputs = [ boost diagnostic-updater marti-common-msgs nav-msgs rclcpp rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
