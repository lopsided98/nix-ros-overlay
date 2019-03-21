
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, ar-track-alvar-msgs, rosgraph-msgs, rocon-service-pair-msgs, rocon-tutorial-msgs, world-canvas-msgs, scheduler-msgs, rocon-device-msgs, diagnostic-msgs, geometry-msgs, stereo-msgs, rosjava-build-tools, concert-msgs, genjava, rosjava-test-msgs, concert-service-msgs, std-srvs, trajectory-msgs, gateway-msgs, catkin, yocs-msgs, move-base-msgs, nav-msgs, std-msgs, roscpp, visualization-msgs, shape-msgs, sensor-msgs, rocon-app-manager-msgs, uuid-msgs, rocon-interaction-msgs, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosjava-messages";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/rosjava-release/rosjava_messages-release/archive/release/kinetic/rosjava_messages/0.3.0-0.tar.gz;
    sha256 = "aa5ca5d61770bf5b1853c10efc5780e74ec0ba19f8d18ba739f707eb7e84a10c";
  };

  propagatedBuildInputs = [ rosjava-build-tools genjava ];
  nativeBuildInputs = [ std-srvs tf2-msgs actionlib-msgs trajectory-msgs gateway-msgs catkin yocs-msgs ar-track-alvar-msgs move-base-msgs rosgraph-msgs nav-msgs rocon-tutorial-msgs world-canvas-msgs scheduler-msgs rocon-device-msgs std-msgs rocon-service-pair-msgs diagnostic-msgs roscpp visualization-msgs geometry-msgs stereo-msgs shape-msgs rosjava-build-tools concert-msgs sensor-msgs genjava rocon-app-manager-msgs uuid-msgs rocon-interaction-msgs rosjava-test-msgs concert-service-msgs rocon-std-msgs ];

  meta = {
    description = ''Message generation for rosjava.'';
    #license = lib.licenses.Apache 2.0;
  };
}
