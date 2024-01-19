
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, ethercat-trigger-controllers, imu-monitor, joint-trajectory-action, joy, microstrain-3dmgx2-imu, ocean-battery-driver, power-monitor, pr2-calibration-controllers, pr2-camera-synchronizer, pr2-computer-monitor, pr2-controller-configuration, pr2-controller-manager, pr2-dashboard-aggregator, pr2-description, pr2-ethercat, pr2-gripper-action, pr2-head-action, pr2-machine, pr2-power-board, pr2-run-stop-auto-restart, prosilica-camera, robot-mechanism-controllers, robot-pose-ekf, robot-state-publisher, rosbag, roslaunch, rostest, single-joint-position-action, sound-play, std-srvs, stereo-image-proc, tf2-ros, urg-node, wge100-camera, wifi-ddwrt }:
buildRosPackage {
  pname = "ros-noetic-pr2-bringup";
  version = "1.6.32-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_robot-release/archive/release/noetic/pr2_bringup/1.6.32-1.tar.gz";
    name = "1.6.32-1.tar.gz";
    sha256 = "d8e565fe9a2b5543b7dfe5482ed17712db223d3b668998df9678f5a2295482cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch rostest ];
  propagatedBuildInputs = [ diagnostic-aggregator ethercat-trigger-controllers imu-monitor joint-trajectory-action joy microstrain-3dmgx2-imu ocean-battery-driver power-monitor pr2-calibration-controllers pr2-camera-synchronizer pr2-computer-monitor pr2-controller-configuration pr2-controller-manager pr2-dashboard-aggregator pr2-description pr2-ethercat pr2-gripper-action pr2-head-action pr2-machine pr2-power-board pr2-run-stop-auto-restart prosilica-camera robot-mechanism-controllers robot-pose-ekf robot-state-publisher rosbag single-joint-position-action sound-play std-srvs stereo-image-proc tf2-ros urg-node wge100-camera wifi-ddwrt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and scripts needed to bring a PR2 up into a running state.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
