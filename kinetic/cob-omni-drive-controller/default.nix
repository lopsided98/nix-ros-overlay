
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-base-controller-utils, tf, geometry-msgs, hardware-interface, boost, realtime-tools, message-generation, angles, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, pluginlib, sensor-msgs, tf2, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-omni-drive-controller";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_omni_drive_controller/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "82eb537c7cbeaf0c5b660287ec4b953ad7ad41d55786f28a3b018e6591c15e7a";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface std-srvs pluginlib boost cob-base-controller-utils realtime-tools sensor-msgs roscpp tf2 message-generation nav-msgs urdf controller-interface dynamic-reconfigure std-msgs angles tf geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface std-srvs boost cob-base-controller-utils pluginlib realtime-tools sensor-msgs roscpp tf2 controller-interface urdf nav-msgs dynamic-reconfigure std-msgs angles tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
