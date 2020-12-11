
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, diff-drive-controller, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, rosunit, std-msgs, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ackermann_steering_controller/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "e9672b4b535a059745bc2a5314fc19267346107fdf482b5f37ed0b6a1064a9ca";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager geometry-msgs rostest rosunit std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
