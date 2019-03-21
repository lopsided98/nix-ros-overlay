
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-capabilities, realsense-camera, zeroconf-avahi, turtlebot-description, create-node, rocon-bubble-icons, robot-pose-ekf, robot-state-publisher, depthimage-to-laserscan, catkin, freenect-launch, astra-launch, kobuki-bumper2pc, rocon-app-manager, openni2-launch, diagnostic-aggregator, laptop-battery-monitor, kobuki-capabilities, kobuki-node, kobuki-safety-controller, yocs-cmd-vel-mux }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-bringup";
  version = "2.4.2";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_bringup/2.4.2-0.tar.gz;
    sha256 = "3488036d173c68cd3716bb6bcd0c89904fac99c0dff06a9cda40112f8b0012c5";
  };

  propagatedBuildInputs = [ turtlebot-capabilities realsense-camera freenect-launch rocon-app-manager openni2-launch turtlebot-description astra-launch kobuki-bumper2pc zeroconf-avahi diagnostic-aggregator laptop-battery-monitor create-node kobuki-capabilities rocon-bubble-icons kobuki-node kobuki-safety-controller robot-pose-ekf robot-state-publisher depthimage-to-laserscan yocs-cmd-vel-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base functionality.'';
    #license = lib.licenses.BSD;
  };
}
