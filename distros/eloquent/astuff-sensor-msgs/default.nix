
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, delphi-esr-msgs, delphi-srr-msgs, derived-object-msgs, ibeo-msgs, kartech-linear-actuator-msgs, mobileye-560-660-msgs, neobotix-usboard-msgs, pacmod-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-eloquent-astuff-sensor-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/eloquent/astuff_sensor_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "e65b1ad12b23c2cf7ade04e34eeb1593e1bd6b4387b651291f511d600ec24ddc";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ delphi-esr-msgs delphi-srr-msgs derived-object-msgs ibeo-msgs kartech-linear-actuator-msgs mobileye-560-660-msgs neobotix-usboard-msgs pacmod-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
