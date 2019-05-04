
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, robot-localization, piksi-multi-rtk, rospy, std-msgs, roscpp, piksi-rtk-msgs }:
buildRosPackage {
  pname = "ros-kinetic-earth-rover-localization";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/earthrover/earth_rover_localization-release/archive/release/kinetic/earth_rover_localization/1.2.0-0.tar.gz;
    sha256 = "9e513c990da16d51f4c1b2c4f80097c9ec816509d8f03c65ab6329333a5bc3e6";
  };

  buildInputs = [ roscpp robot-localization piksi-multi-rtk rospy std-msgs tf piksi-rtk-msgs ];
  propagatedBuildInputs = [ tf robot-localization piksi-multi-rtk rospy std-msgs roscpp piksi-rtk-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration for the EKF of the robot_localization package to use with the Earth Rover Open Agribot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
