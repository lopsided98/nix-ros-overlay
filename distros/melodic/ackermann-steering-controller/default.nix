
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, diff-drive-controller, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, rosunit, std-msgs, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ackermann_steering_controller/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "c6a9497ba01e61521279152fdc1a308cee5856d8e03b031d6917b4965da235a2";
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
