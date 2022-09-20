
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-gripper-sensor-action, pr2-gripper-sensor-controller, pr2-gripper-sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-gripper-sensor";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/melodic/pr2_gripper_sensor/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "d27388ef2f16ca671e6490422924065a3555335d61e3fe1916611e6176d256ad";
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
