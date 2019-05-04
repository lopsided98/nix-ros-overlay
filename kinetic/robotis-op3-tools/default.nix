
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-web-setting-tool, op3-navigation, op3-camera-setting-tool, catkin, op3-gui-demo, op3-offset-tuner-client, op3-offset-tuner-server, op3-action-editor }:
buildRosPackage {
  pname = "ros-kinetic-robotis-op3-tools";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/robotis_op3_tools/0.2.2-0.tar.gz;
    sha256 = "fbc8da2b139994eceb717217bd9d21cd3b0758e8068dba6231f1cd90115264ae";
  };

  propagatedBuildInputs = [ op3-navigation op3-web-setting-tool op3-camera-setting-tool op3-gui-demo op3-offset-tuner-client op3-offset-tuner-server op3-action-editor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the robotis_op3_tools (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
