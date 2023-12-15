
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-lint-auto, as2-core, as2-ign-gazebo-assets, as2-msgs, geometry-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-as2-platform-ign-gazebo";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_ign_gazebo/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "7a456919ecefcd3a5684c5a6e63b9cdfa13b859820c904734d75c7f088a190f6";
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
