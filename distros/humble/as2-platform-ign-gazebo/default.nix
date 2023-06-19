
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-ign-gazebo-assets, as2-msgs, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-as2-platform-ign-gazebo";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_ign_gazebo/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "f2b70f16c24fe8877a1998ba320e4d360f6df1d168251527b5b06ef73b8caef7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-lint-auto ];
  propagatedBuildInputs = [ as2-core as2-ign-gazebo-assets as2-msgs geometry-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package to communicate Ignition Gazebo Simulator with Aerostack2 framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
