
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, boost, cartesian-trajectory-controller, catkin, control-msgs, controller-manager, controller-manager-msgs, force-torque-sensor-controller, geometry-msgs, hardware-interface, industrial-robot-status-controller, industrial-robot-status-interface, joint-state-controller, joint-trajectory-controller, kdl-parser, pass-through-controllers, pluginlib, robot-state-publisher, roscpp, rostest, scaled-joint-trajectory-controller, sensor-msgs, socat, speed-scaling-interface, speed-scaling-state-controller, std-srvs, tf, tf2-geometry-msgs, tf2-msgs, trajectory-msgs, twist-controller, ur-client-library, ur-dashboard-msgs, ur-description, ur-msgs, velocity-controllers }:
buildRosPackage {
  pname = "ros-melodic-ur-robot-driver";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/melodic/ur_robot_driver/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "17199e7350fe10191a664979945003bc80208c805660878c47d8b94c0db5f103";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin industrial-robot-status-interface ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ actionlib cartesian-trajectory-controller control-msgs controller-manager controller-manager-msgs force-torque-sensor-controller geometry-msgs hardware-interface industrial-robot-status-controller joint-state-controller joint-trajectory-controller kdl-parser pass-through-controllers pluginlib robot-state-publisher roscpp scaled-joint-trajectory-controller sensor-msgs socat speed-scaling-interface speed-scaling-state-controller std-srvs tf tf2-geometry-msgs tf2-msgs trajectory-msgs twist-controller ur-client-library ur-dashboard-msgs ur-description ur-msgs velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 controllers and the e-series.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" ];
  };
}
