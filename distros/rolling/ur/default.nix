
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ur-calibration, ur-controllers, ur-dashboard-msgs, ur-moveit-config, ur-robot-driver }:
buildRosPackage {
  pname = "ros-rolling-ur";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "9aad0ebf948a6905f17e1168a3dae0d7e3f467b4c9cce76b90f602bd47c16c23";
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
