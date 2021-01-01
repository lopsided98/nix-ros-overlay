
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, astra-launch, catkin, depthimage-to-laserscan, diagnostic-aggregator, freenect-launch, imu-filter-madgwick, imu-transformer, laser-filters, microstrain-3dmgx2-imu, nmea-comms, nmea-navsat-driver, nodelet, openni2-launch, pythonPackages, realsense-camera, rgbd-launch, robot-localization, robot-state-publisher, robot-upstart, roch-base, roch-capabilities, roch-control, roch-description, roch-safety-controller, roch-sensorpc, rocon-app-manager, rocon-app-manager-msgs, rocon-bubble-icons, rocon-interaction-msgs, roslaunch, rospy, rplidar-ros, tf, tf2-ros, zeroconf-avahi }:
buildRosPackage {
  pname = "ros-kinetic-roch-bringup";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_bringup/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "39a0f64bc0d30b4fd57b7bd086a138ce5171c1b97ed3cefda84c9370740ea509";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ astra-launch depthimage-to-laserscan diagnostic-aggregator freenect-launch imu-filter-madgwick imu-transformer laser-filters microstrain-3dmgx2-imu nmea-comms nmea-navsat-driver nodelet openni2-launch pythonPackages.scipy realsense-camera rgbd-launch robot-localization robot-state-publisher robot-upstart roch-base roch-capabilities roch-control roch-description roch-safety-controller roch-sensorpc rocon-app-manager rocon-app-manager-msgs rocon-bubble-icons rocon-interaction-msgs rospy rplidar-ros tf tf2-ros zeroconf-avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
