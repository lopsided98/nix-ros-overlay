
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, backward-ros, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-rig-reconfigure";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/jazzy/rig_reconfigure/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "ab2564a2ec10725680c98103b1c378b43e0fd1520240eaa33443b96ac3aba05d";
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
