
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-gtest, as2-msgs, cv-bridge, eigen, geographic-msgs, geographiclib, geometry-msgs, image-transport, libyamlcpp, nav-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-core";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_core/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "aea9ce110088dbb1d05c34e5f59fb3946f4e538a2f0c978cd30e0f4c3c7df7a4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake as2-msgs cv-bridge eigen geographic-msgs geographiclib geometry-msgs image-transport libyamlcpp nav-msgs rclcpp rclcpp-action rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Aerostack2 core package which contains the basic classes of the Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
