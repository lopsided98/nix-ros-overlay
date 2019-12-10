
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, canopen-motor-node, catkin, cob-android-script-server, cob-base-controller-utils, cob-base-velocity-smoother, cob-bms-driver, cob-calibration-data, cob-cam3d-throttle, cob-collision-velocity-filter, cob-command-gui, cob-control-mode-adapter, cob-dashboard, cob-default-env-config, cob-default-robot-behavior, cob-default-robot-config, cob-docker-control, cob-frame-tracker, cob-hand-bridge, cob-hardware-config, cob-helper-tools, cob-image-flip, cob-light, cob-linear-nav, cob-mimic, cob-monitoring, cob-moveit-config, cob-obstacle-distance, cob-omni-drive-controller, cob-phidget-em-state, cob-phidget-power-state, cob-phidgets, cob-reflector-referencing, cob-safety-controller, cob-scan-unifier, cob-script-server, cob-sick-lms1xx, cob-sick-s300, cob-sound, cob-supported-robots, cob-teleop, cob-twist-controller, cob-voltage-control, compressed-depth-image-transport, compressed-image-transport, controller-manager, costmap-2d, diagnostic-aggregator, generic-throttle, image-proc, joint-state-controller, joint-state-publisher, joint-trajectory-controller, joy, laser-filters, nodelet, openni-launch, openni2-launch, position-controllers, realsense-camera, robot-state-publisher, roslaunch, rosserial-python, rosserial-server, rostopic, rplidar-ros, rviz, spacenav-node, tf2-ros, theora-image-transport, topic-tools, twist-mux, usb-cam, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_bringup/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "46421444185f41baca9290c1f4e16771275ba82b04b9b563689947911fcf133b";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots ];
  propagatedBuildInputs = [ canopen-chain-node canopen-motor-node cob-android-script-server cob-base-controller-utils cob-base-velocity-smoother cob-bms-driver cob-calibration-data cob-cam3d-throttle cob-collision-velocity-filter cob-command-gui cob-control-mode-adapter cob-dashboard cob-default-env-config cob-default-robot-behavior cob-default-robot-config cob-docker-control cob-frame-tracker cob-hand-bridge cob-hardware-config cob-helper-tools cob-image-flip cob-light cob-linear-nav cob-mimic cob-monitoring cob-moveit-config cob-obstacle-distance cob-omni-drive-controller cob-phidget-em-state cob-phidget-power-state cob-phidgets cob-reflector-referencing cob-safety-controller cob-scan-unifier cob-script-server cob-sick-lms1xx cob-sick-s300 cob-sound cob-teleop cob-twist-controller cob-voltage-control compressed-depth-image-transport compressed-image-transport controller-manager costmap-2d diagnostic-aggregator generic-throttle image-proc joint-state-controller joint-state-publisher joint-trajectory-controller joy laser-filters nodelet openni-launch openni2-launch position-controllers realsense-camera robot-state-publisher roslaunch rosserial-python rosserial-server rostopic rplidar-ros rviz spacenav-node tf2-ros theora-image-transport topic-tools twist-mux usb-cam velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
