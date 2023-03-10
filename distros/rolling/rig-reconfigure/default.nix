
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rig-reconfigure";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/rolling/rig_reconfigure/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "86ad913cd78691f2697bb4c09f76e30d6e14ecb6c7f34860d6573adf011dbc2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ glfw3 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Standalone GUI tool for editing node parameters at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
