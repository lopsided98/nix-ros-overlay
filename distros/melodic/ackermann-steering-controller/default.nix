
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, diff-drive-controller, gazebo-ros, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, rosunit, std-msgs, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ackermann_steering_controller/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "322a175e8e262849f1159517354c0bd1713a08577465dc0f789068b1d11bc674";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager gazebo-ros geometry-msgs rostest rosunit std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
