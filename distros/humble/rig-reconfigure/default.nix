
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-humble-rig-reconfigure";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/humble/rig_reconfigure/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5f84c98403f23072d9d3c08d7d5d2257dbd5a938bf1d64402315a4c51c4cd9a7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ glfw3 rclcpp ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Standalone GUI tool for editing node parameters at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
