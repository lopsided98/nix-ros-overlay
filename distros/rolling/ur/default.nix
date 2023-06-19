
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ur-calibration, ur-controllers, ur-dashboard-msgs, ur-moveit-config, ur-robot-driver }:
buildRosPackage {
  pname = "ros-rolling-ur";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "c47198f018849b0f424b25331959c8bfd679730453a7ee8e944b3f22c3572b89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ur-calibration ur-controllers ur-dashboard-msgs ur-moveit-config ur-robot-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for universal robots'';
    license = with lib.licenses; [ bsd3 ];
  };
}
