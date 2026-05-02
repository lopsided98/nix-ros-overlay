
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, backward-ros, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rig-reconfigure";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/rolling/rig_reconfigure/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "8a7794c2b35665f43136157d4b85674a6b7a8fc52b42e0dcef0a059ec70952f3";
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
