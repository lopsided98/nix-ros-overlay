
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-drone-msgs-adapter, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rotor-controller";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rotor_controller/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "13bd78216d142bfab7e80c53e217e61a025701dd6888921e8b853ca5d3f5e4ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-drone-msgs-adapter tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that converts rotor thrust commands into actuator setpoints.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
