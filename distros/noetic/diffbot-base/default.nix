
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, controller-manager, diagnostic-updater, diff-drive-controller, diffbot-msgs, dynamic-reconfigure, hardware-interface, roscpp, rosparam-shortcuts, rosserial, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-diffbot-base";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_base/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5793ae3fa559221f08b2ea983cd5178aa65c91c2bb4b76eb62ddb2cfc4369553";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox controller-manager diagnostic-updater diff-drive-controller diffbot-msgs dynamic-reconfigure hardware-interface roscpp rosparam-shortcuts rosserial sensor-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_base package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
