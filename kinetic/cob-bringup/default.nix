
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-safety-controller, cob-bms-driver, controller-manager, cob-cam3d-throttle, theora-image-transport, cob-phidget-power-state, cob-monitoring, twist-mux, openni-launch, cob-calibration-data, cob-helper-tools, cob-command-gui, nodelet, rplidar-ros, joint-state-controller, realsense-camera, cob-base-controller-utils, cob-image-flip, laser-filters, canopen-motor-node, robot-state-publisher, image-proc, position-controllers, cob-reflector-referencing, usb-cam, rostopic, cob-control-mode-adapter, cob-sick-lms1xx, compressed-depth-image-transport, cob-scan-unifier, cob-teleop, cob-twist-controller, openni2-launch, cob-docker-control, cob-phidgets, joint-trajectory-controller, generic-throttle, tf2-ros, cob-linear-nav, joy, joint-state-publisher, diagnostic-aggregator, cob-default-robot-config, cob-supported-robots, cob-base-velocity-smoother, cob-hardware-config, cob-sound, cob-hand-bridge, spacenav-node, catkin, rosserial-server, rosserial-python, costmap-2d, cob-default-robot-behavior, canopen-chain-node, topic-tools, cob-frame-tracker, cob-light, cob-sick-s300, roslaunch, cob-script-server, cob-collision-velocity-filter, cob-voltage-control, cob-default-env-config, cob-dashboard, cob-omni-drive-controller, rviz, cob-android-script-server, compressed-image-transport, cob-moveit-config, cob-phidget-em-state, cob-mimic, cob-obstacle-distance, velocity-controllers }:
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
  propagatedBuildInputs = [ cob-safety-controller cob-bms-driver controller-manager cob-cam3d-throttle cob-phidget-power-state cob-monitoring twist-mux theora-image-transport openni-launch cob-calibration-data cob-helper-tools image-proc nodelet cob-command-gui rplidar-ros joint-state-controller position-controllers cob-phidget-em-state realsense-camera cob-base-controller-utils cob-image-flip laser-filters canopen-motor-node cob-scan-unifier cob-reflector-referencing robot-state-publisher cob-teleop usb-cam rostopic cob-control-mode-adapter cob-twist-controller openni2-launch compressed-depth-image-transport cob-docker-control cob-sick-lms1xx cob-phidgets joint-trajectory-controller generic-throttle tf2-ros cob-linear-nav joy joint-state-publisher cob-hardware-config cob-sound cob-hand-bridge spacenav-node diagnostic-aggregator cob-base-velocity-smoother cob-default-robot-config rosserial-server rosserial-python costmap-2d cob-default-robot-behavior canopen-chain-node topic-tools cob-frame-tracker cob-sick-s300 cob-script-server cob-light roslaunch cob-collision-velocity-filter cob-voltage-control cob-default-env-config cob-dashboard cob-omni-drive-controller cob-android-script-server rviz cob-moveit-config compressed-image-transport cob-mimic cob-obstacle-distance velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
