
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, ar-track-alvar, std-msgs, actionlib, tf, catkin, roslint, yocs-msgs, ar-track-alvar-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-yocs-localization-manager";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_localization_manager/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "eb2e39a17f8f78cbe98c04b73a63d666fb5937156490539ae49ad1e94b607a49";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure ar-track-alvar std-msgs actionlib tf yocs-msgs ar-track-alvar-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization Manager helps to localize robot's position with annotated information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
