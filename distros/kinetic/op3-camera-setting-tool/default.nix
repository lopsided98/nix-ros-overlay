
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, dynamic-reconfigure, libyamlcpp, message-generation, message-runtime, roscpp, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-camera-setting-tool";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_camera_setting_tool/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "f6fac433344f169ff92c72877682d478c398689635d1dc695d771a2f6bc72999";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost dynamic-reconfigure libyamlcpp message-runtime roscpp roslib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_camera_setting_tool package'';
    license = with lib.licenses; [ asl20 ];
  };
}
