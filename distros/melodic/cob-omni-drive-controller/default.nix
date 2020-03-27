
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, sensor-msgs, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-melodic-cob-omni-drive-controller";
  version = "0.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_omni_drive_controller/0.8.11-1.tar.gz";
    name = "0.8.11-1.tar.gz";
    sha256 = "1c7e5c036e789a5814affb06ccc7d76dfdb80496e2bf32033f95cfe4481b3bf6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp sensor-msgs std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot omni-directional base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
