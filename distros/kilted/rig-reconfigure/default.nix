
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, backward-ros, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-rig-reconfigure";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/kilted/rig_reconfigure/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "2d978af3bcc3ab115f901b908a340cc62c35ad95e5a17cc0e4bb2abf4d7395ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ ament-index-cpp backward-ros glfw3 rclcpp ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Standalone GUI tool for editing node parameters at runtime.";
    license = with lib.licenses; [ mit ];
  };
}
