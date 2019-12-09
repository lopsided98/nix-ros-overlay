
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, neobotix-usboard-msgs, kartech-linear-actuator-msgs, derived-object-msgs, radar-msgs, delphi-srr-msgs, catkin, delphi-esr-msgs, mobileye-560-660-msgs, pacmod-msgs, ibeo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-astuff-sensor-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/astuff_sensor_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "f537f00af14df34d02c8a67745a3ce7c39f50d0c862ba01d5a56fc9c37884846";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ neobotix-usboard-msgs kartech-linear-actuator-msgs derived-object-msgs delphi-srr-msgs ibeo-msgs delphi-esr-msgs mobileye-560-660-msgs pacmod-msgs radar-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
