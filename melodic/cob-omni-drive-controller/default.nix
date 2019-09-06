
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-base-controller-utils, tf, geometry-msgs, hardware-interface, boost, realtime-tools, message-generation, angles, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, pluginlib, sensor-msgs, tf2, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-cob-omni-drive-controller";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_omni_drive_controller/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "44ddfa24fff24069f7fc4aea2d49a8b33d2ba9b85d116bd0178cb1955671082d";
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
