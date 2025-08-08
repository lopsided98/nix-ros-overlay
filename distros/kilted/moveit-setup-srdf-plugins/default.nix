
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, moveit-resources-fanuc-description, moveit-setup-framework, pluginlib }:
buildRosPackage {
  pname = "ros-kilted-moveit-setup-srdf-plugins";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_setup_srdf_plugins/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "58a18d89154083daeb7cf9a29e99151ab16a46c80edfe1be74fa52a51771f32d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest moveit-resources-fanuc-description ];
  propagatedBuildInputs = [ moveit-setup-framework pluginlib ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "SRDF-based plugins for MoveIt Setup Assistant";
    license = with lib.licenses; [ bsd3 ];
  };
}
