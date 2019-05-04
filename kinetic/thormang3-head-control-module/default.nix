
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, thormang3-head-control-module-msgs, cmake-modules, boost, sensor-msgs, catkin, roscpp, robotis-math, eigen, std-msgs, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-head-control-module";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_head_control_module/0.2.0-0.tar.gz;
    sha256 = "a8674655f38ec8dfc935c03c12dcee8afb4ae615d4cb57813b397bcc7462d4a9";
  };

  buildInputs = [ thormang3-head-control-module-msgs cmake-modules boost sensor-msgs roscpp robotis-math eigen std-msgs robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ thormang3-head-control-module-msgs cmake-modules boost sensor-msgs roscpp robotis-math eigen std-msgs robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A module to control the head.
    This module is included in the Thormang3 Manager as a library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
