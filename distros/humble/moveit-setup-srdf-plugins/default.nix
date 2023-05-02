
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, moveit-resources-fanuc-description, moveit-setup-framework, pluginlib }:
buildRosPackage {
  pname = "ros-humble-moveit-setup-srdf-plugins";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_setup_srdf_plugins/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "b9f9abf660c183aa427342ce7c22e052a2efd06d22c241c47ebad22a440a4a0c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto moveit-resources-fanuc-description ];
  propagatedBuildInputs = [ moveit-setup-framework pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SRDF-based plugins for MoveIt Setup Assistant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
