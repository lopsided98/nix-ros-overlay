
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-gripper-sensor-action, pr2-gripper-sensor-controller, pr2-gripper-sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-gripper-sensor";
  version = "1.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/noetic/pr2_gripper_sensor/1.0.12-1.tar.gz";
    name = "1.0.12-1.tar.gz";
    sha256 = "658d8c50d17751bea67f26090006a86b7009cb960a4e06f4a12a04399883e8fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-gripper-sensor-action pr2-gripper-sensor-controller pr2-gripper-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
