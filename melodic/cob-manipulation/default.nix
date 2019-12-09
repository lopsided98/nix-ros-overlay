
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-lookat-action, cob-collision-monitor, catkin, cob-moveit-bringup, cob-grasp-generation, cob-obstacle-distance-moveit, cob-moveit-interface }:
buildRosPackage {
  pname = "ros-melodic-cob-manipulation";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_manipulation/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "46e01f93a529557783ec3c1e198b6b41a229c72c634056a53e27d1f36269da46";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-lookat-action cob-collision-monitor cob-moveit-bringup cob-grasp-generation cob-obstacle-distance-moveit cob-moveit-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
