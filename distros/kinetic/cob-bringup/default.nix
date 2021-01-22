
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, canopen-motor-node, catkin, cob-android-script-server, cob-base-controller-utils, cob-base-velocity-smoother, cob-bms-driver, cob-calibration-data, cob-cam3d-throttle, cob-collision-monitor, cob-collision-velocity-filter, cob-command-gui, cob-control-mode-adapter, cob-dashboard, cob-default-env-config, cob-default-robot-behavior, cob-default-robot-config, cob-docker-control, cob-frame-tracker, cob-hand-bridge, cob-hardware-config, cob-helper-tools, cob-image-flip, cob-light, cob-linear-nav, cob-mecanum-controller, cob-mimic, cob-monitoring, cob-moveit-config, cob-obstacle-distance, cob-omni-drive-controller, cob-phidget-em-state, cob-phidget-power-state, cob-phidgets, cob-reflector-referencing, cob-safety-controller, cob-scan-unifier, cob-script-server, cob-sick-lms1xx, cob-sick-s300, cob-sound, cob-supported-robots, cob-teleop, cob-twist-controller, cob-voltage-control, compressed-depth-image-transport, compressed-image-transport, controller-manager, costmap-2d, diagnostic-aggregator, generic-throttle, image-proc, joint-state-controller, joint-state-publisher, joint-trajectory-controller, joy, laser-filters, nodelet, openni-launch, openni2-launch, position-controllers, realsense-camera, rgbd-launch, robot-state-publisher, roslaunch, rosserial-python, rosserial-server, rostopic, rplidar-ros, rviz, spacenav-node, tf2-ros, theora-image-transport, topic-tools, twist-mux, usb-cam, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_bringup/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "a88a56f5e9a0db8e92af004b71538866a65dfa11c95de660c5e88ef645615648";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ canopen-chain-node canopen-motor-node cob-android-script-server cob-base-controller-utils cob-base-velocity-smoother cob-bms-driver cob-calibration-data cob-cam3d-throttle cob-collision-monitor cob-collision-velocity-filter cob-command-gui cob-control-mode-adapter cob-dashboard cob-default-env-config cob-default-robot-behavior cob-default-robot-config cob-docker-control cob-frame-tracker cob-hand-bridge cob-hardware-config cob-helper-tools cob-image-flip cob-light cob-linear-nav cob-mecanum-controller cob-mimic cob-monitoring cob-moveit-config cob-obstacle-distance cob-omni-drive-controller cob-phidget-em-state cob-phidget-power-state cob-phidgets cob-reflector-referencing cob-safety-controller cob-scan-unifier cob-script-server cob-sick-lms1xx cob-sick-s300 cob-sound cob-teleop cob-twist-controller cob-voltage-control compressed-depth-image-transport compressed-image-transport controller-manager costmap-2d diagnostic-aggregator generic-throttle image-proc joint-state-controller joint-state-publisher joint-trajectory-controller joy laser-filters nodelet openni-launch openni2-launch position-controllers realsense-camera rgbd-launch robot-state-publisher rosserial-python rosserial-server rostopic rplidar-ros rviz spacenav-node tf2-ros theora-image-transport topic-tools twist-mux usb-cam velocity-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
