
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-navigation-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-mission-manager-msgs";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_mission_manager_msgs/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "131754327cbf05f16374de6d3cb0791ccda337e3478bbf65c013e77921f60430";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clearpath-navigation-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clearpath_mission_manager_msgs package'';
    license = with lib.licenses; [ "Clearpath-Proprietary" ];
  };
}
