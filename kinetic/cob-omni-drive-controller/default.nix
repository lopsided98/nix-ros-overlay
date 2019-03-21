
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-base-controller-utils, tf, geometry-msgs, hardware-interface, boost, realtime-tools, message-generation, angles, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, pluginlib, sensor-msgs, tf2, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-omni-drive-controller";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_omni_drive_controller/0.7.3-0.tar.gz;
    sha256 = "9b7099f89ede6cd92a6f0916798f28f0918a80878d1fd6a141241ef38c3785df";
  };

  propagatedBuildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools sensor-msgs roscpp tf2 nav-msgs urdf controller-interface dynamic-reconfigure std-msgs angles tf geometry-msgs ];
  nativeBuildInputs = [ std-srvs cob-base-controller-utils catkin nav-msgs urdf controller-interface std-msgs angles roscpp tf geometry-msgs hardware-interface pluginlib boost realtime-tools sensor-msgs tf2 message-generation dynamic-reconfigure ];

  meta = {
    description = ''The cob_omni_drive_controller package'';
    #license = lib.licenses.Apache 2.0;
  };
}
