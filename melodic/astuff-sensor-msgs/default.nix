
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kartech-linear-actuator-msgs, catkin, delphi-srr-msgs, radar-msgs, mobileye-560-660-msgs, pacmod-msgs, delphi-esr-msgs, neobotix-usboard-msgs, ibeo-msgs, derived-object-msgs }:
buildRosPackage {
  pname = "ros-melodic-astuff-sensor-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/astuff_sensor_msgs/2.3.1-0.tar.gz;
    sha256 = "91f67f406cc09d6509d9639f61822a74c8ee42c17b423a06f21616576cd349ff";
  };

  propagatedBuildInputs = [ kartech-linear-actuator-msgs delphi-srr-msgs radar-msgs mobileye-560-660-msgs pacmod-msgs delphi-esr-msgs neobotix-usboard-msgs ibeo-msgs derived-object-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    #license = lib.licenses.MIT;
  };
}
