
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, neobotix-usboard-msgs, kartech-linear-actuator-msgs, derived-object-msgs, radar-msgs, delphi-srr-msgs, catkin, delphi-esr-msgs, mobileye-560-660-msgs, pacmod-msgs, ibeo-msgs }:
buildRosPackage {
  pname = "ros-melodic-astuff-sensor-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/astuff_sensor_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "91f67f406cc09d6509d9639f61822a74c8ee42c17b423a06f21616576cd349ff";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ neobotix-usboard-msgs kartech-linear-actuator-msgs derived-object-msgs delphi-srr-msgs ibeo-msgs delphi-esr-msgs mobileye-560-660-msgs pacmod-msgs radar-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
