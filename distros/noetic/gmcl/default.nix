
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, geometry-msgs, map-server, message-filters, nav-msgs, python3Packages, rosbag, roscpp, rostest, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-gmcl";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/adler-1994/gmcl-release/archive/release/noetic/gmcl/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "46c797852514b8f68fdfed022818e139bc7384323891013e3fee1deb9c7428c2";
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
