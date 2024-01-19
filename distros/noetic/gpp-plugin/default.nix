
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, global-planner, gpp-interface, mbf-costmap-core, mbf-costmap-nav, mbf-msgs, move-base, nav-core, pluginlib, rostest, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-gpp-plugin";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/dorezyuk/gpp-release/archive/release/noetic/gpp_plugin/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ec040bfbdd8955f355f878cff68978ad94b5766920013b34f34e5449b07b61b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ global-planner mbf-costmap-nav move-base rostest ];
  propagatedBuildInputs = [ costmap-2d gpp-interface mbf-costmap-core mbf-msgs nav-core pluginlib xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpp_plugin package offers a pipeline for running global 
  planners together with auxiliary pre- and post-processing functions'';
    license = with lib.licenses; [ mit ];
  };
}
