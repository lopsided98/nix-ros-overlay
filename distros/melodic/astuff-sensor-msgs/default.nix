
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, delphi-esr-msgs, delphi-srr-msgs, derived-object-msgs, ibeo-msgs, kartech-linear-actuator-msgs, mobileye-560-660-msgs, neobotix-usboard-msgs, pacmod-msgs, radar-msgs }:
buildRosPackage {
  pname = "ros-melodic-astuff-sensor-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/astuff_sensor_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "91f67f406cc09d6509d9639f61822a74c8ee42c17b423a06f21616576cd349ff";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ delphi-esr-msgs delphi-srr-msgs derived-object-msgs ibeo-msgs kartech-linear-actuator-msgs mobileye-560-660-msgs neobotix-usboard-msgs pacmod-msgs radar-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
