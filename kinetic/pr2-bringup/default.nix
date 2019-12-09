
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-run-stop-auto-restart, pr2-head-action, microstrain-3dmgx2-imu, pr2-machine, pr2-dashboard-aggregator, wge100-camera, ocean-battery-driver, pr2-gripper-action, rostest, pr2-camera-synchronizer, ethercat-trigger-controllers, pr2-description, robot-state-publisher, joint-trajectory-action, sound-play, pr2-controller-configuration, pr2-calibration-controllers, power-monitor, wifi-ddwrt, single-joint-position-action, rosbag, pr2-ethercat, tf2-ros, diagnostic-aggregator, joy, stereo-image-proc, std-srvs, pr2-power-board, catkin, pr2-computer-monitor, prosilica-camera, urg-node, robot-mechanism-controllers, robot-pose-ekf, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-pr2-bringup";
  version = "1.6.30";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_bringup/1.6.30-0.tar.gz";
    name = "1.6.30-0.tar.gz";
    sha256 = "e3819d9a2080e72cda07ebc03da576c164c1ba4d2f6c54587b5828b30142a78d";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ pr2-run-stop-auto-restart pr2-head-action microstrain-3dmgx2-imu pr2-machine pr2-dashboard-aggregator wge100-camera ocean-battery-driver pr2-gripper-action pr2-camera-synchronizer ethercat-trigger-controllers pr2-description robot-state-publisher joint-trajectory-action sound-play pr2-controller-configuration pr2-calibration-controllers power-monitor wifi-ddwrt single-joint-position-action rosbag pr2-ethercat tf2-ros diagnostic-aggregator joy stereo-image-proc std-srvs pr2-power-board pr2-computer-monitor prosilica-camera urg-node robot-mechanism-controllers robot-pose-ekf pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and scripts needed to bring a PR2 up into a running state.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
