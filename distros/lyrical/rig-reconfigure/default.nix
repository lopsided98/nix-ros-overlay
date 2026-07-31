
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-rig-reconfigure";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/lyrical/rig_reconfigure/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "8cd83091d5df4fe1864ea76bd3eb243accf3696ab69c225e1379d5e65e6d347a";
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
