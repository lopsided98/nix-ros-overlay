
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kartech-linear-actuator-msgs, catkin, delphi-srr-msgs, radar-msgs, mobileye-560-660-msgs, pacmod-msgs, delphi-esr-msgs, neobotix-usboard-msgs, ibeo-msgs, derived-object-msgs }:
buildRosPackage {
  pname = "ros-lunar-astuff-sensor-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/lunar/astuff_sensor_msgs/2.3.1-0.tar.gz;
    sha256 = "5f0b105a366d905800f701bce32f8eb742ba1879e2ea682348d9b7dc9570d31c";
  };

  propagatedBuildInputs = [ kartech-linear-actuator-msgs delphi-srr-msgs radar-msgs mobileye-560-660-msgs pacmod-msgs delphi-esr-msgs neobotix-usboard-msgs ibeo-msgs derived-object-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
