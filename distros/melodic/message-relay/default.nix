
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, controller-manager-msgs, diagnostic-msgs, gazebo-msgs, geometry-msgs, map-msgs, move-base-msgs, multimaster-msgs, nav-msgs, pythonPackages, robot-localization, roscpp, rosgraph-msgs, roslaunch, roslint, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-message-relay";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/message_relay/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1aa52fc974539d1900c9c31cab57960ae4461a2f07958187c1b9eae9b00d8877";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.cheetah ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ actionlib-msgs controller-manager-msgs diagnostic-msgs gazebo-msgs geometry-msgs map-msgs move-base-msgs multimaster-msgs nav-msgs robot-localization roscpp rosgraph-msgs sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to programmatically spawn message, service, and action relays. To add support for a message/service dependency, please add to the build dependencies in package.xml and CMakeLists.txt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
