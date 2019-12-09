
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, joint-limits-interface, controller-manager, hardware-interface, khi-robot-msgs, position-controllers, catkin, transmission-interface, realtime-tools, diagnostic-updater, joint-trajectory-controller, rostest, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-control";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_control/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "97c62532a93adcc6c37496e3a77b659ff44c346680f2c870feb296c3b9ae0930";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs controller-manager joint-limits-interface hardware-interface khi-robot-msgs transmission-interface realtime-tools diagnostic-updater ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ trajectory-msgs controller-manager joint-limits-interface hardware-interface khi-robot-msgs position-controllers transmission-interface diagnostic-updater joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
