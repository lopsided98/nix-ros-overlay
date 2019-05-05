
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, ar-track-alvar, catkin, yocs-msgs, ar-track-alvar-msgs, rospy, actionlib, std-msgs, dynamic-reconfigure, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-localization-manager";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_localization_manager/0.8.2-0.tar.gz;
    sha256 = "eb2e39a17f8f78cbe98c04b73a63d666fb5937156490539ae49ad1e94b607a49";
  };

  buildInputs = [ roslint ];
  propagatedBuildInputs = [ ar-track-alvar yocs-msgs ar-track-alvar-msgs actionlib rospy std-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization Manager helps to localize robot's position with annotated information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
