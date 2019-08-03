
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, robot-localization, rosgraph-msgs, multimaster-msgs, diagnostic-msgs, geometry-msgs, gazebo-msgs, stereo-msgs, roslint, pythonPackages, controller-manager-msgs, roslaunch, std-srvs, trajectory-msgs, catkin, move-base-msgs, nav-msgs, std-msgs, roscpp, visualization-msgs, shape-msgs, sensor-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-message-relay";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/message_relay/0.0.2-1.tar.gz;
    sha256 = "8566fe2cacb0377bb3aa034547ba27bc0b87356f6d14eabccca4ba9d1fff313a";
  };

  buildInputs = [ tf2-msgs actionlib-msgs robot-localization rosgraph-msgs multimaster-msgs diagnostic-msgs gazebo-msgs stereo-msgs geometry-msgs pythonPackages.cheetah controller-manager-msgs std-srvs trajectory-msgs move-base-msgs nav-msgs std-msgs visualization-msgs roscpp shape-msgs sensor-msgs map-msgs ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ tf2-msgs actionlib-msgs robot-localization rosgraph-msgs multimaster-msgs diagnostic-msgs geometry-msgs gazebo-msgs stereo-msgs controller-manager-msgs std-srvs trajectory-msgs move-base-msgs nav-msgs std-msgs visualization-msgs roscpp shape-msgs sensor-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to programmatically spawn message, service, and action relays. To add support for a message/service dependency, please add to the build dependencies in package.xml and CMakeLists.txt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
