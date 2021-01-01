
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, delphi-esr-msgs, delphi-srr-msgs, derived-object-msgs, ibeo-msgs, kartech-linear-actuator-msgs, mobileye-560-660-msgs, neobotix-usboard-msgs, pacmod-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-astuff-sensor-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/noetic/astuff_sensor_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "aa4f6afcb8b1060045645515f375db18aa17d255bc9f03ed453bd522741d202a";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ delphi-esr-msgs delphi-srr-msgs derived-object-msgs ibeo-msgs kartech-linear-actuator-msgs mobileye-560-660-msgs neobotix-usboard-msgs pacmod-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
