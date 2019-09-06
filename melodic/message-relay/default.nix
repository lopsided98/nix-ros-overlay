
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, robot-localization, rosgraph-msgs, multimaster-msgs, diagnostic-msgs, geometry-msgs, gazebo-msgs, stereo-msgs, roslint, pythonPackages, controller-manager-msgs, roslaunch, std-srvs, trajectory-msgs, catkin, move-base-msgs, nav-msgs, std-msgs, roscpp, visualization-msgs, shape-msgs, sensor-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-melodic-message-relay";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/message_relay/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1aa52fc974539d1900c9c31cab57960ae4461a2f07958187c1b9eae9b00d8877";
  };

  buildType = "catkin";
  buildInputs = [ tf2-msgs actionlib-msgs robot-localization rosgraph-msgs multimaster-msgs diagnostic-msgs gazebo-msgs stereo-msgs geometry-msgs pythonPackages.cheetah controller-manager-msgs std-srvs trajectory-msgs move-base-msgs nav-msgs std-msgs visualization-msgs roscpp shape-msgs sensor-msgs map-msgs ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ tf2-msgs actionlib-msgs robot-localization rosgraph-msgs multimaster-msgs diagnostic-msgs geometry-msgs gazebo-msgs stereo-msgs controller-manager-msgs std-srvs trajectory-msgs move-base-msgs nav-msgs std-msgs visualization-msgs roscpp shape-msgs sensor-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to programmatically spawn message, service, and action relays. To add support for a message/service dependency, please add to the build dependencies in package.xml and CMakeLists.txt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
