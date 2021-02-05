
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, hardware-interface, joint-limits-interface, joint-state-controller, joint-trajectory-controller, khi-robot-msgs, position-controllers, realtime-tools, rostest, trajectory-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-control";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_control/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "176edce4b0c1eb25c4847f3b44ef815267f7897aa13cc4fe1499550a15e6c693";
  };

  buildType = "catkin";
  buildInputs = [ realtime-tools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater hardware-interface joint-limits-interface joint-state-controller joint-trajectory-controller khi-robot-msgs position-controllers trajectory-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
