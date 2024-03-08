
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, moveit-resources-fanuc-description, moveit-setup-framework, pluginlib }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-srdf-plugins";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_srdf_plugins/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "4de7531bb1852bca30f347fd0ac22c636f7566a2ad958a134d55697d28a7e2a8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto moveit-resources-fanuc-description ];
  propagatedBuildInputs = [ moveit-setup-framework pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SRDF-based plugins for MoveIt Setup Assistant'';
    license = with lib.licenses; [ bsd3 ];
  };
}
