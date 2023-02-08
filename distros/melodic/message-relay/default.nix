
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, controller-manager-msgs, diagnostic-msgs, gazebo-msgs, geometry-msgs, map-msgs, move-base-msgs, multimaster-msgs, nav-msgs, pythonPackages, robot-localization, roscpp, rosgraph-msgs, roslaunch, roslint, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-message-relay";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "cpr_multimaster_tools-release";
        rev = "release/melodic/message_relay/0.0.2-1";
        sha256 = "sha256-+GuTBfaE4ElXSBLajjtHcUEfgtlC0mpqbbVKQ7djq/k=";
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
