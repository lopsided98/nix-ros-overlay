
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-interaction-msgs, microstrain-3dmgx2-imu, tf, robot-upstart, roch-description, imu-transformer, nmea-navsat-driver, nodelet, imu-filter-madgwick, rocon-bubble-icons, freenect-launch, realsense-camera, rocon-app-manager, robot-state-publisher, laser-filters, roch-capabilities, roch-control, rocon-app-manager-msgs, openni2-launch, zeroconf-avahi, tf2-ros, diagnostic-aggregator, catkin, pythonPackages, nmea-comms, roch-base, robot-localization, rospy, roslaunch, depthimage-to-laserscan, rgbd-launch, roch-sensorpc, roch-safety-controller, rplidar-ros, astra-launch }:
buildRosPackage {
  pname = "ros-kinetic-roch-bringup";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_bringup/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "39a0f64bc0d30b4fd57b7bd086a138ce5171c1b97ed3cefda84c9370740ea509";
  };

  buildType = "catkin";
  buildInputs = [ rospy roslaunch ];
  propagatedBuildInputs = [ microstrain-3dmgx2-imu rocon-interaction-msgs tf robot-upstart roch-description imu-transformer nmea-navsat-driver nodelet imu-filter-madgwick rocon-bubble-icons freenect-launch realsense-camera rocon-app-manager robot-state-publisher laser-filters roch-capabilities roch-control rocon-app-manager-msgs openni2-launch zeroconf-avahi tf2-ros diagnostic-aggregator nmea-comms roch-base robot-localization rospy depthimage-to-laserscan rgbd-launch roch-sensorpc pythonPackages.scipy roch-safety-controller rplidar-ros astra-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
