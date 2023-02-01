
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, map-server, message-filters, nav-msgs, python3Packages, rosbag, roscpp, rostest, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-gmcl";
  version = "1.0.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "adler-1994";
        repo = "gmcl-release";
        rev = "release/noetic/gmcl/1.0.1-3";
        sha256 = "sha256-0eHw0NHier7DtVx54FH6itFQQVW1/uZmWmwXU/b6/JQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-filters tf2-geometry-msgs ];
  checkInputs = [ map-server python3Packages.pykdl rostest ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure geometry-msgs nav-msgs rosbag roscpp sensor-msgs std-srvs tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
         gmcl, which stands for general monte carlo localization,
         is a probabilistic-based localization technique for mobile robots in
         2D-known map. It integrates the adaptive monte carlo localization
         - amcl - approach with three different particle filter algorithms (Optimal, Intelligent,
         Self-adaptive) to improve the performance while working in real time.                       
        </p>
        <p>
         Main node structure and amcl-algorithms’s code was derived, with thanks, from Brian Gerkey's amcl package.     
        </p>'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
