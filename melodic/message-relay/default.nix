
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, map-msgs, actionlib-msgs, tf2-msgs, nav-msgs, sensor-msgs, diagnostic-msgs, controller-manager-msgs, shape-msgs, multimaster-msgs, move-base-msgs, std-msgs, std-srvs, pythonPackages, catkin, robot-localization, roscpp, rosgraph-msgs, roslaunch, trajectory-msgs, roslint, gazebo-msgs, stereo-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-message-relay";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/message_relay/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1aa52fc974539d1900c9c31cab57960ae4461a2f07958187c1b9eae9b00d8877";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pythonPackages.cheetah map-msgs actionlib-msgs tf2-msgs nav-msgs sensor-msgs diagnostic-msgs controller-manager-msgs shape-msgs multimaster-msgs move-base-msgs std-msgs std-srvs robot-localization roscpp rosgraph-msgs trajectory-msgs gazebo-msgs stereo-msgs visualization-msgs ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ geometry-msgs map-msgs actionlib-msgs tf2-msgs nav-msgs sensor-msgs diagnostic-msgs controller-manager-msgs shape-msgs multimaster-msgs move-base-msgs std-msgs std-srvs robot-localization roscpp rosgraph-msgs trajectory-msgs gazebo-msgs stereo-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to programmatically spawn message, service, and action relays. To add support for a message/service dependency, please add to the build dependencies in package.xml and CMakeLists.txt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
