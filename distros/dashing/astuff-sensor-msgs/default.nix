
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, delphi-esr-msgs, delphi-srr-msgs, derived-object-msgs, ibeo-msgs, kartech-linear-actuator-msgs, mobileye-560-660-msgs, neobotix-usboard-msgs, pacmod-msgs, radar-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-dashing-astuff-sensor-msgs";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/astuff_sensor_msgs/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "622adf40fd95c3959705b66656cd620acca8a22231a35a1079face8311b5281a";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment ];
  propagatedBuildInputs = [ delphi-esr-msgs delphi-srr-msgs derived-object-msgs ibeo-msgs kartech-linear-actuator-msgs mobileye-560-660-msgs neobotix-usboard-msgs pacmod-msgs radar-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages specific to AStuff-provided sensors.'';
    license = with lib.licenses; [ mit ];
  };
}
