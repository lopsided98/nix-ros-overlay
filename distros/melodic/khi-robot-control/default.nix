
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, hardware-interface, joint-limits-interface, joint-state-controller, joint-trajectory-controller, khi-robot-msgs, position-controllers, realtime-tools, rostest, trajectory-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-khi-robot-control";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_robot_control/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5b41dc0be0d2c297e2df384f877f5db6388398fef8e557eddcd2433e2216c68b";
  };

  buildType = "catkin";
  buildInputs = [ catkin realtime-tools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager diagnostic-updater hardware-interface joint-limits-interface joint-state-controller joint-trajectory-controller khi-robot-msgs position-controllers trajectory-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
