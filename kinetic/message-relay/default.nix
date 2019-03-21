
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, robot-localization, rosgraph-msgs, multimaster-msgs, diagnostic-msgs, geometry-msgs, gazebo-msgs, stereo-msgs, roslint, pythonPackages, controller-manager-msgs, roslaunch, std-srvs, trajectory-msgs, catkin, move-base-msgs, nav-msgs, std-msgs, roscpp, visualization-msgs, shape-msgs, sensor-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-message-relay";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/message_relay/0.0.1-0.tar.gz;
    sha256 = "8315b1329b1319e3d3580927eed17a77ea2ab2e8726f6c7dc7d944829f120eab";
  };

  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ std-srvs tf2-msgs actionlib-msgs trajectory-msgs move-base-msgs robot-localization rosgraph-msgs nav-msgs multimaster-msgs std-msgs diagnostic-msgs visualization-msgs roscpp gazebo-msgs stereo-msgs geometry-msgs shape-msgs sensor-msgs controller-manager-msgs map-msgs ];
  nativeBuildInputs = [ std-srvs tf2-msgs actionlib-msgs trajectory-msgs catkin move-base-msgs robot-localization rosgraph-msgs nav-msgs multimaster-msgs std-msgs diagnostic-msgs visualization-msgs roscpp gazebo-msgs stereo-msgs geometry-msgs shape-msgs pythonPackages.cheetah sensor-msgs controller-manager-msgs map-msgs ];

  meta = {
    description = ''Package to programmatically spawn message, service, and action relays. To add support for a message/service dependency, please add to the build dependencies in package.xml and CMakeLists.txt'';
    #license = lib.licenses.BSD;
  };
}
