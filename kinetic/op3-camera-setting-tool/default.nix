
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, libyamlcpp, catkin, roslib, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-op3-camera-setting-tool";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_camera_setting_tool/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "f6fac433344f169ff92c72877682d478c398689635d1dc695d771a2f6bc72999";
  };

  buildType = "catkin";
  buildInputs = [ boost libyamlcpp roslib message-generation dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ boost libyamlcpp roslib message-runtime dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_camera_setting_tool package'';
    license = with lib.licenses; [ asl20 ];
  };
}
