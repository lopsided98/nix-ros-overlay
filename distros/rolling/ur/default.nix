
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ur-calibration, ur-controllers, ur-dashboard-msgs, ur-moveit-config, ur-robot-driver }:
buildRosPackage {
  pname = "ros-rolling-ur";
  version = "2.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur/2.4.3-2.tar.gz";
    name = "2.4.3-2.tar.gz";
    sha256 = "b87809c91ea452cc734e152bf42dd887206655f9e31e4f15ee4cf0c68655a87b";
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
