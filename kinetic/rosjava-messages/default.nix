
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-interaction-msgs, geometry-msgs, actionlib-msgs, rocon-tutorial-msgs, tf2-msgs, gateway-msgs, nav-msgs, uuid-msgs, sensor-msgs, diagnostic-msgs, shape-msgs, rocon-app-manager-msgs, rosjava-build-tools, yocs-msgs, genjava, rocon-std-msgs, move-base-msgs, rosjava-test-msgs, std-msgs, std-srvs, catkin, world-canvas-msgs, roscpp, ar-track-alvar-msgs, rosgraph-msgs, trajectory-msgs, concert-service-msgs, rocon-device-msgs, concert-msgs, scheduler-msgs, stereo-msgs, visualization-msgs, rocon-service-pair-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-messages";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rosjava-release/rosjava_messages-release/archive/release/kinetic/rosjava_messages/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "aa5ca5d61770bf5b1853c10efc5780e74ec0ba19f8d18ba739f707eb7e84a10c";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs rocon-interaction-msgs actionlib-msgs rocon-tutorial-msgs tf2-msgs gateway-msgs uuid-msgs nav-msgs sensor-msgs diagnostic-msgs shape-msgs rocon-app-manager-msgs rosjava-build-tools yocs-msgs genjava rocon-std-msgs rosjava-test-msgs move-base-msgs std-msgs std-srvs world-canvas-msgs roscpp ar-track-alvar-msgs rosgraph-msgs trajectory-msgs concert-service-msgs rocon-device-msgs concert-msgs scheduler-msgs stereo-msgs visualization-msgs rocon-service-pair-msgs ];
  propagatedBuildInputs = [ genjava rosjava-build-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message generation for rosjava.'';
    license = with lib.licenses; [ asl20 ];
  };
}
