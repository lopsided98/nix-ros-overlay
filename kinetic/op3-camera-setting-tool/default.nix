
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, boost, dynamic-reconfigure, std-msgs, catkin, roslib, libyamlcpp, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-op3-camera-setting-tool";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_camera_setting_tool/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "f6fac433344f169ff92c72877682d478c398689635d1dc695d771a2f6bc72999";
  };

  buildType = "catkin";
  buildInputs = [ boost dynamic-reconfigure std-msgs roslib libyamlcpp roscpp message-generation ];
  propagatedBuildInputs = [ boost dynamic-reconfigure std-msgs roslib libyamlcpp roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_camera_setting_tool package'';
    license = with lib.licenses; [ asl20 ];
  };
}
