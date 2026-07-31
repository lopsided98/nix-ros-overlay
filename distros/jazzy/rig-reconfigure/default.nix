
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-rig-reconfigure";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/jazzy/rig_reconfigure/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "c7da3f049e991be85de3fceee83d5d2fbbe26fa4e5a3f586e591bbb2c432caa3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ ament-index-cpp glfw3 rclcpp ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Standalone GUI tool for editing node parameters at runtime.";
    license = with lib.licenses; [ mit ];
  };
}
