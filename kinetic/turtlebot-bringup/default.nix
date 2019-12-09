
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, create-node, yocs-cmd-vel-mux, rocon-bubble-icons, freenect-launch, realsense-camera, kobuki-node, rocon-app-manager, robot-state-publisher, kobuki-bumper2pc, laptop-battery-monitor, turtlebot-description, openni2-launch, turtlebot-capabilities, zeroconf-avahi, diagnostic-aggregator, catkin, depthimage-to-laserscan, kobuki-capabilities, kobuki-safety-controller, robot-pose-ekf, astra-launch }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-bringup";
  version = "2.4.2";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_bringup/2.4.2-0.tar.gz";
    name = "2.4.2-0.tar.gz";
    sha256 = "3488036d173c68cd3716bb6bcd0c89904fac99c0dff06a9cda40112f8b0012c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ create-node yocs-cmd-vel-mux rocon-bubble-icons freenect-launch realsense-camera kobuki-node rocon-app-manager robot-state-publisher kobuki-bumper2pc laptop-battery-monitor turtlebot-description openni2-launch turtlebot-capabilities zeroconf-avahi diagnostic-aggregator depthimage-to-laserscan kobuki-capabilities kobuki-safety-controller robot-pose-ekf astra-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base functionality.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
