
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ur-calibration, ur-controllers, ur-dashboard-msgs, ur-moveit-config, ur-robot-driver }:
buildRosPackage {
  pname = "ros-iron-ur";
  version = "2.3.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/iron/ur/2.3.10-1.tar.gz";
    name = "2.3.10-1.tar.gz";
    sha256 = "3d6384d9ce0c73fd30cd4d59f8428d7711e192e4e3f7e3d6ee5b02935e6a78e9";
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
