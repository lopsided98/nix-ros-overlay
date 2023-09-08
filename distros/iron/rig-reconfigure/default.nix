
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-iron-rig-reconfigure";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/iron/rig_reconfigure/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "fa51a7a7b2a86fdb187f3da386c0bab216a5f67869db171b38d3c3ecdfed1116";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ ament-index-cpp glfw3 rclcpp ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Standalone GUI tool for editing node parameters at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
