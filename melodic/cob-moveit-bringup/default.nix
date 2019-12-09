
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, cob-hardware-config, joint-state-publisher, robot-state-publisher, moveit-setup-assistant, moveit-ros-move-group, tf, catkin, moveit-ros-perception, moveit-ros-visualization, cob-moveit-config, moveit-plugins }:
buildRosPackage {
  pname = "ros-melodic-cob-moveit-bringup";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/melodic/cob_moveit_bringup/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "f7103a0f61ea45ed857e226d8fe4ddf5141edaeb437b74248d63f2e1bb9c1884";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl cob-hardware-config joint-state-publisher robot-state-publisher moveit-setup-assistant moveit-ros-move-group tf moveit-ros-perception moveit-ros-visualization cob-moveit-config moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt launch files'';
    license = with lib.licenses; [ asl20 ];
  };
}
