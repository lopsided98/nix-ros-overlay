
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, pluginlib, tf, tf2, nav-msgs, sensor-msgs, cob-base-controller-utils, dynamic-reconfigure, std-msgs, std-srvs, catkin, realtime-tools, roscpp, angles, message-generation, boost, controller-interface, hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-cob-omni-drive-controller";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_omni_drive_controller/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "82eb537c7cbeaf0c5b660287ec4b953ad7ad41d55786f28a3b018e6591c15e7a";
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
