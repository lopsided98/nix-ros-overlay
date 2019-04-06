
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-base-controller-utils, tf, geometry-msgs, hardware-interface, boost, realtime-tools, message-generation, angles, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, pluginlib, sensor-msgs, tf2, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-omni-drive-controller";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_omni_drive_controller/0.7.4-0.tar.gz;
    sha256 = "b3448749acce6bf9b2d4a92db6dfca32a39bd9c9f192de33d98313c65e71a39b";
  };

  propagatedBuildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools sensor-msgs roscpp tf2 nav-msgs urdf controller-interface dynamic-reconfigure std-msgs angles tf geometry-msgs ];
  nativeBuildInputs = [ std-srvs cob-base-controller-utils catkin nav-msgs urdf controller-interface std-msgs angles roscpp tf geometry-msgs hardware-interface pluginlib boost realtime-tools sensor-msgs tf2 message-generation dynamic-reconfigure ];

  meta = {
    description = ''The cob_omni_drive_controller package'';
    #license = lib.licenses.Apache 2.0;
  };
}
