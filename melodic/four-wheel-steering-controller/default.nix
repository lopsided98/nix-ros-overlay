
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf-geometry-parser, controller-interface, nav-msgs, controller-manager, std-srvs, tf, catkin, realtime-tools, four-wheel-steering-msgs, rosgraph-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/four_wheel_steering_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "bd529d3a98a4ca99a6965a27d09a019ab15fbb247be61246e4c949bed5ae9fcb";
  };

  buildType = "catkin";
  buildInputs = [ urdf-geometry-parser controller-interface tf realtime-tools four-wheel-steering-msgs nav-msgs ];
  checkInputs = [ std-srvs rosgraph-msgs rostest controller-manager ];
  propagatedBuildInputs = [ urdf-geometry-parser controller-interface tf realtime-tools four-wheel-steering-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
