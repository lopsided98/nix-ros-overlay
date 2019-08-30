
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, usb-cam, cob-base-controller-utils, cob-moveit-config, cob-monitoring, realsense-camera, joint-trajectory-controller, position-controllers, rplidar-ros, cob-omni-drive-controller, cob-voltage-control, generic-throttle, cob-supported-robots, cob-default-robot-behavior, joint-state-controller, cob-sound, cob-mimic, cob-hardware-config, theora-image-transport, cob-default-env-config, cob-phidgets, openni-launch, cob-sick-s300, robot-state-publisher, rviz, cob-cam3d-throttle, cob-dashboard, compressed-depth-image-transport, roslaunch, image-proc, joint-state-publisher, topic-tools, cob-sick-lms1xx, cob-phidget-power-state, cob-reflector-referencing, cob-image-flip, cob-twist-controller, rosserial-server, catkin, joy, velocity-controllers, tf2-ros, cob-light, cob-scan-unifier, canopen-motor-node, cob-helper-tools, cob-control-mode-adapter, cob-frame-tracker, canopen-chain-node, diagnostic-aggregator, openni2-launch, cob-default-robot-config, compressed-image-transport, nodelet, cob-phidget-em-state, controller-manager, costmap-2d, twist-mux, spacenav-node, cob-teleop, cob-bms-driver, cob-script-server, cob-command-gui, cob-collision-velocity-filter, cob-hand-bridge, laser-filters, cob-safety-controller, cob-base-velocity-smoother, cob-docker-control, cob-obstacle-distance, rostopic, cob-linear-nav, cob-calibration-data, cob-android-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup";
  version = "0.7.1-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_bringup/0.7.1-1.tar.gz;
    sha256 = "faf8bfe589603f4d24908cfd826620fce6d99141a13b0944eaddca5a21950e7e";
  };

  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ rosserial-python usb-cam cob-base-controller-utils cob-moveit-config cob-monitoring realsense-camera joint-trajectory-controller position-controllers cob-voltage-control rplidar-ros generic-throttle cob-omni-drive-controller cob-default-robot-behavior joint-state-controller cob-sound cob-mimic cob-hardware-config theora-image-transport cob-default-env-config cob-phidgets rviz cob-sick-s300 robot-state-publisher cob-dashboard cob-cam3d-throttle compressed-depth-image-transport roslaunch image-proc joint-state-publisher openni-launch cob-sick-lms1xx cob-phidget-power-state cob-reflector-referencing cob-image-flip cob-twist-controller rosserial-server joy velocity-controllers tf2-ros cob-light cob-scan-unifier canopen-motor-node cob-helper-tools cob-control-mode-adapter canopen-chain-node diagnostic-aggregator openni2-launch cob-frame-tracker cob-default-robot-config cob-phidget-em-state compressed-image-transport nodelet controller-manager costmap-2d twist-mux spacenav-node cob-teleop cob-bms-driver cob-script-server cob-command-gui cob-hand-bridge cob-safety-controller cob-collision-velocity-filter laser-filters cob-base-velocity-smoother cob-docker-control cob-obstacle-distance topic-tools cob-linear-nav cob-calibration-data rostopic cob-android-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
