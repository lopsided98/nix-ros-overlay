
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-gripper-sensor-action, pr2-gripper-sensor-controller, pr2-gripper-sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-gripper-sensor";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/pr2_gripper_sensor/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "cea728b49b588e6bda40a3b0f1f0ad0e8799904030f2aabd904b060dbc94f951";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-gripper-sensor-action pr2-gripper-sensor-controller pr2-gripper-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_gripper_sensor package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
