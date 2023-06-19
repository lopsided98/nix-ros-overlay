
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-iron-rig-reconfigure";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/iron/rig_reconfigure/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1ebaff0aeecdebd82fde14b52ad6a6cf8c6b64b01030c51fdeab8b702f7f5e1a";
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
