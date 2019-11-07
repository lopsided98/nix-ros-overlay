
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, cob-moveit-config, cob-base-controller-utils, usb-cam, cob-monitoring, realsense-camera, joint-trajectory-controller, rplidar-ros, position-controllers, cob-omni-drive-controller, cob-voltage-control, generic-throttle, cob-supported-robots, cob-default-robot-behavior, joint-state-controller, cob-sound, cob-mimic, cob-hardware-config, theora-image-transport, cob-default-env-config, cob-phidgets, openni-launch, cob-sick-s300, robot-state-publisher, rviz, cob-cam3d-throttle, cob-dashboard, compressed-depth-image-transport, roslaunch, image-proc, joint-state-publisher, topic-tools, cob-sick-lms1xx, cob-phidget-power-state, cob-reflector-referencing, cob-image-flip, cob-twist-controller, rosserial-server, catkin, joy, velocity-controllers, tf2-ros, cob-light, cob-scan-unifier, canopen-motor-node, cob-helper-tools, cob-control-mode-adapter, cob-frame-tracker, canopen-chain-node, diagnostic-aggregator, openni2-launch, cob-default-robot-config, compressed-image-transport, nodelet, cob-phidget-em-state, controller-manager, costmap-2d, twist-mux, spacenav-node, cob-teleop, cob-bms-driver, cob-script-server, cob-command-gui, cob-collision-velocity-filter, cob-hand-bridge, laser-filters, cob-base-velocity-smoother, cob-safety-controller, cob-docker-control, cob-obstacle-distance, rostopic, cob-linear-nav, cob-calibration-data, cob-android-script-server }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_bringup/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "46421444185f41baca9290c1f4e16771275ba82b04b9b563689947911fcf133b";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ rosserial-python cob-moveit-config cob-base-controller-utils usb-cam cob-monitoring realsense-camera joint-trajectory-controller cob-voltage-control rplidar-ros position-controllers generic-throttle cob-omni-drive-controller cob-default-robot-behavior joint-state-controller cob-sound cob-mimic cob-hardware-config theora-image-transport cob-default-env-config cob-phidgets rviz cob-sick-s300 robot-state-publisher cob-dashboard cob-cam3d-throttle compressed-depth-image-transport image-proc roslaunch joint-state-publisher openni-launch cob-sick-lms1xx cob-phidget-power-state cob-reflector-referencing cob-image-flip cob-twist-controller rosserial-server joy velocity-controllers tf2-ros cob-light cob-scan-unifier canopen-motor-node cob-helper-tools cob-control-mode-adapter cob-frame-tracker canopen-chain-node openni2-launch diagnostic-aggregator cob-default-robot-config compressed-image-transport cob-phidget-em-state nodelet controller-manager costmap-2d twist-mux spacenav-node cob-teleop cob-bms-driver cob-script-server cob-command-gui cob-hand-bridge cob-collision-velocity-filter laser-filters cob-base-velocity-smoother cob-linear-nav cob-docker-control cob-obstacle-distance topic-tools cob-safety-controller cob-calibration-data rostopic cob-android-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
