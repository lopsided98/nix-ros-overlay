
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, joint-state-controller, trajectory-msgs, joint-limits-interface, realtime-tools, catkin, joint-trajectory-controller, diagnostic-updater, rostest, position-controllers, khi-robot-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-control";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_control/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "97c62532a93adcc6c37496e3a77b659ff44c346680f2c870feb296c3b9ae0930";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager hardware-interface trajectory-msgs realtime-tools joint-limits-interface diagnostic-updater khi-robot-msgs transmission-interface ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-manager hardware-interface joint-state-controller trajectory-msgs joint-limits-interface joint-trajectory-controller diagnostic-updater position-controllers khi-robot-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS KHI robot controller package based on ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
