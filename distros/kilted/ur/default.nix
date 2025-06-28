
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ur-calibration, ur-controllers, ur-dashboard-msgs, ur-moveit-config, ur-robot-driver }:
buildRosPackage {
  pname = "ros-kilted-ur";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/kilted/ur/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "8d218c2c7045f97d59dd6f8b1ce2b7044bbadf3f5327e467d4b42d47e55748a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ur-calibration ur-controllers ur-dashboard-msgs ur-moveit-config ur-robot-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for universal robots";
    license = with lib.licenses; [ bsd3 ];
  };
}
