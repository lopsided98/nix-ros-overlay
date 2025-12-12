
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, moveit-resources-fanuc-description, moveit-setup-framework, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-moveit-setup-srdf-plugins";
  version = "2.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_setup_srdf_plugins/2.12.4-1.tar.gz";
    name = "2.12.4-1.tar.gz";
    sha256 = "3956f43f562f6d5fd5eddada19ad0f72972bad9ee92de5ea39f8eb80e0fb78f0";
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
