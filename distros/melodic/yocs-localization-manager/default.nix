
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, ar-track-alvar, ar-track-alvar-msgs, catkin, dynamic-reconfigure, geometry-msgs, roslint, rospy, std-msgs, tf, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-localization-manager";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_localization_manager/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "eb2e39a17f8f78cbe98c04b73a63d666fb5937156490539ae49ad1e94b607a49";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ actionlib ar-track-alvar ar-track-alvar-msgs dynamic-reconfigure geometry-msgs rospy std-msgs tf yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization Manager helps to localize robot's position with annotated information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
