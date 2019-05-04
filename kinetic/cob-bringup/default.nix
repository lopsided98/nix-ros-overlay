
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-collision-monitor, sick-visionary-t-driver, cob-monitoring, realsense-camera, position-controllers, rplidar-ros, cob-omni-drive-controller, cob-supported-robots, cob-hardware-config, cob-cam3d-throttle, rosserial-server, catkin, cob-light, canopen-motor-node, cob-control-mode-adapter, compressed-image-transport, cob-android-script-server, rosserial-python, joint-trajectory-controller, cob-voltage-control, joint-state-controller, cob-mimic, theora-image-transport, cob-default-env-config, cob-phidgets, image-proc, joint-state-publisher, cob-sick-lms1xx, cob-phidget-power-state, diagnostic-aggregator, cob-phidget-em-state, costmap-2d, cob-hand-bridge, cob-safety-controller, cob-base-velocity-smoother, rostopic, cob-base-controller-utils, openni-launch, cob-sick-s300, robot-state-publisher, cob-twist-controller, cob-scan-unifier, cob-helper-tools, cob-frame-tracker, cob-default-robot-config, controller-manager, twist-mux, cob-bms-driver, cob-collision-velocity-filter, laser-filters, cob-docker-control, cob-obstacle-distance, cob-calibration-data, cob-moveit-config, usb-cam, generic-throttle, cob-default-robot-behavior, cob-sound, rviz, cob-dashboard, compressed-depth-image-transport, roslaunch, cob-reflector-referencing, cob-image-flip, joy, velocity-controllers, tf2-ros, canopen-chain-node, openni2-launch, nodelet, spacenav-node, cob-teleop, cob-script-server, cob-command-gui, ur-driver, cob-linear-nav, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_bringup/0.6.11-0.tar.gz;
    sha256 = "a1f7deaff0e45aadc4de4224709360da068c740c776103d531d68644195ca54d";
  };

  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ cob-collision-monitor rosserial-python usb-cam cob-base-controller-utils sick-visionary-t-driver cob-moveit-config realsense-camera cob-monitoring joint-trajectory-controller position-controllers cob-voltage-control rplidar-ros generic-throttle cob-omni-drive-controller cob-default-robot-behavior joint-state-controller cob-sound cob-mimic cob-hardware-config theora-image-transport cob-default-env-config cob-phidgets rviz cob-sick-s300 robot-state-publisher cob-dashboard cob-cam3d-throttle compressed-depth-image-transport roslaunch image-proc joint-state-publisher openni-launch cob-sick-lms1xx cob-phidget-power-state cob-reflector-referencing cob-image-flip cob-twist-controller rosserial-server joy velocity-controllers tf2-ros cob-light cob-scan-unifier canopen-motor-node cob-helper-tools cob-control-mode-adapter canopen-chain-node diagnostic-aggregator openni2-launch cob-frame-tracker cob-default-robot-config cob-phidget-em-state compressed-image-transport nodelet controller-manager costmap-2d twist-mux spacenav-node cob-teleop cob-bms-driver cob-script-server cob-command-gui cob-hand-bridge cob-safety-controller cob-collision-velocity-filter laser-filters cob-base-velocity-smoother cob-docker-control cob-obstacle-distance topic-tools ur-driver cob-calibration-data cob-linear-nav rostopic cob-android-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
