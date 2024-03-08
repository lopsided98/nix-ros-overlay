
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rig-reconfigure";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/rolling/rig_reconfigure/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "ce4a7b59f312d5b654463f1c56f0da50372c83db2e93349a597aeb2b92e52598";
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
