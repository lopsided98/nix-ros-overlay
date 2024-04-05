
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-gazebo-assets, as2-msgs, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-as2-platform-gazebo";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_gazebo/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "6782dbb8f6f89138db710ca527b9493b1fb436291e83b53bdbbee533c4294aea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-gazebo-assets as2-msgs geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to communicate Gazebo Simulator with Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
