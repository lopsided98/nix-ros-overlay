
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, pluginlib, tf, tf2, nav-msgs, sensor-msgs, cob-base-controller-utils, dynamic-reconfigure, std-msgs, std-srvs, catkin, realtime-tools, roscpp, angles, message-generation, boost, controller-interface, hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-cob-omni-drive-controller";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_omni_drive_controller/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "ee36867f9fc83fb99b6627e49fc510c211f69b8abee2b4868261d3b41de83ec1";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs geometry-msgs controller-interface urdf cob-base-controller-utils hardware-interface pluginlib std-msgs std-srvs tf dynamic-reconfigure roscpp realtime-tools tf2 angles message-generation nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs boost geometry-msgs controller-interface urdf dynamic-reconfigure hardware-interface pluginlib std-msgs std-srvs tf cob-base-controller-utils roscpp realtime-tools tf2 angles nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
