
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, astra-launch, catkin, create-node, depthimage-to-laserscan, diagnostic-aggregator, freenect-launch, kobuki-bumper2pc, kobuki-capabilities, kobuki-node, kobuki-safety-controller, laptop-battery-monitor, openni2-launch, realsense-camera, robot-pose-ekf, robot-state-publisher, rocon-app-manager, rocon-bubble-icons, turtlebot-capabilities, turtlebot-description, yocs-cmd-vel-mux, zeroconf-avahi }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-bringup";
  version = "2.4.2";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_bringup/2.4.2-0.tar.gz";
    name = "2.4.2-0.tar.gz";
    sha256 = "3488036d173c68cd3716bb6bcd0c89904fac99c0dff06a9cda40112f8b0012c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ astra-launch create-node depthimage-to-laserscan diagnostic-aggregator freenect-launch kobuki-bumper2pc kobuki-capabilities kobuki-node kobuki-safety-controller laptop-battery-monitor openni2-launch realsense-camera robot-pose-ekf robot-state-publisher rocon-app-manager rocon-bubble-icons turtlebot-capabilities turtlebot-description yocs-cmd-vel-mux zeroconf-avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
