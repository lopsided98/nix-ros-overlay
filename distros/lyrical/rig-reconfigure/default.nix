
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, backward-ros, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-rig-reconfigure";
  version = "1.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/lyrical/rig_reconfigure/1.6.0-3.tar.gz";
    name = "1.6.0-3.tar.gz";
    sha256 = "6081b96f1ec1d15b6fa835d2eefa44e3b3ee481ccc6f18b7af5badd8153dd988";
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
