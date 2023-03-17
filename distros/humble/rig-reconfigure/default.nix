
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glfw3, rclcpp }:
buildRosPackage {
  pname = "ros-humble-rig-reconfigure";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rig_reconfigure-release/archive/release/humble/rig_reconfigure/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d3780915266b630a01b9ef6f26f8874165989da0cc85ce5ee5a4f1d9243d2b8b";
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
