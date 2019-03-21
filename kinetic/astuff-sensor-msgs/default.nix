
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kartech-linear-actuator-msgs, catkin, delphi-srr-msgs, radar-msgs, mobileye-560-660-msgs, pacmod-msgs, delphi-esr-msgs, neobotix-usboard-msgs, ibeo-msgs, derived-object-msgs }:
buildRosPackage {
  pname = "ros-kinetic-astuff-sensor-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/astuff_sensor_msgs/2.3.1-0.tar.gz;
    sha256 = "f537f00af14df34d02c8a67745a3ce7c39f50d0c862ba01d5a56fc9c37884846";
  };

  propagatedBuildInputs = [ kartech-linear-actuator-msgs delphi-srr-msgs radar-msgs mobileye-560-660-msgs pacmod-msgs delphi-esr-msgs neobotix-usboard-msgs ibeo-msgs derived-object-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    #license = lib.licenses.MIT;
  };
}
