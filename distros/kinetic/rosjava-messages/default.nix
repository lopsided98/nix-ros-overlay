
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ar-track-alvar-msgs, catkin, concert-msgs, concert-service-msgs, diagnostic-msgs, gateway-msgs, genjava, geometry-msgs, move-base-msgs, nav-msgs, rocon-app-manager-msgs, rocon-device-msgs, rocon-interaction-msgs, rocon-service-pair-msgs, rocon-std-msgs, rocon-tutorial-msgs, roscpp, rosgraph-msgs, rosjava-build-tools, rosjava-test-msgs, scheduler-msgs, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, uuid-msgs, visualization-msgs, world-canvas-msgs, yocs-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-messages";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava_messages-release/archive/release/kinetic/rosjava_messages/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "aa5ca5d61770bf5b1853c10efc5780e74ec0ba19f8d18ba739f707eb7e84a10c";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs ar-track-alvar-msgs concert-msgs concert-service-msgs diagnostic-msgs gateway-msgs geometry-msgs move-base-msgs nav-msgs rocon-app-manager-msgs rocon-device-msgs rocon-interaction-msgs rocon-service-pair-msgs rocon-std-msgs rocon-tutorial-msgs roscpp rosgraph-msgs rosjava-test-msgs scheduler-msgs sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs uuid-msgs visualization-msgs world-canvas-msgs yocs-msgs ];
  propagatedBuildInputs = [ genjava rosjava-build-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message generation for rosjava.'';
    license = with lib.licenses; [ asl20 ];
  };
}
