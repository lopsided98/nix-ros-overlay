
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-iron-rig-reconfigure";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/iron/rig_reconfigure/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "c43cfe7e8ae670fc2a592dfa187fe8a042c9928f65c5219d2fafa4a98be4bd0e";
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
