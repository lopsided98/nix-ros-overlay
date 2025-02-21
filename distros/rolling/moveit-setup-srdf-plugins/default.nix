
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, moveit-resources-fanuc-description, moveit-setup-framework, pluginlib }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-srdf-plugins";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_srdf_plugins/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "2fb54bd97a8ec65cdc8082fbe672ce3e904983639327c8732850f83352efefa8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest moveit-resources-fanuc-description ];
  propagatedBuildInputs = [ moveit-setup-framework pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SRDF-based plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
