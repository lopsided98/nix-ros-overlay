
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpp-interface, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-gpp-update-map";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/dorezyuk/gpp-release/archive/release/noetic/gpp_update_map/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "a9bd9719af1b91957ad5dad8e531e18326e1f922d195c8be9795ad8c96d416c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gpp-interface pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpp_update_map plugin will update the map before running the global planner'';
    license = with lib.licenses; [ mit ];
  };
}
