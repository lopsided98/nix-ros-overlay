
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, delphi-esr-msgs, delphi-srr-msgs, derived-object-msgs, ibeo-msgs, kartech-linear-actuator-msgs, mobileye-560-660-msgs, neobotix-usboard-msgs, pacmod-msgs, radar-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-astuff-sensor-msgs";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/astuff_sensor_msgs/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "a96b19f4f23210692d87fdc878b65082a2fab92235461559b586608338996dbe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ delphi-esr-msgs delphi-srr-msgs derived-object-msgs ibeo-msgs kartech-linear-actuator-msgs mobileye-560-660-msgs neobotix-usboard-msgs pacmod-msgs radar-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
