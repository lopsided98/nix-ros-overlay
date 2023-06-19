
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-updater, hardware-interface, joint-limits-interface, joint-state-controller, joint-trajectory-controller, khi-robot-msgs, position-controllers, realtime-tools, rostest, trajectory-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-khi-robot-control";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_robot_control/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f8a38c2077445985415f1250ab1a87c2011249908fcffd8eff193b4b02dc29fe";
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
