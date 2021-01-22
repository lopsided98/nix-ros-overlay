
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, geometry-msgs, gridmap-2d, humanoid-nav-msgs, map-server, nav-msgs, opencv3, rosconsole, roscpp, rospy, sbpl, sensor-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-footstep-planner";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/footstep_planner/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "065d2d1c76650b2d9afaf45a34017adcf54b604c0f33081b60380200f3cc427d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib angles geometry-msgs gridmap-2d humanoid-nav-msgs map-server nav-msgs opencv3 rosconsole roscpp rospy sbpl sensor-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>A footstep planner for humanoid / biped robots. The planner builds on SBPL and has anytime as well as dynamic replanning capabilities. The supported planners are: ARA*, AD*, R*.</p>
    <p>Details can be found in the following publications:</p>
    <p><em>&quot;Humanoid Navigation with Dynamic Footstep Plans&quot;</em>
    by J. Garimort, A. Hornung, and M. Bennewitz; published in 
    Proc. of the IEEE International Conference on Robotics &amp; Automation (ICRA), 2011</p>
    <p><em>Anytime Search-Based Footstep Planning with Suboptimality Bounds</em>
    by A. Hornung, A. Dornbush, M. Likhachev, and M. Bennewitz; published in
    Proc. of the IEEE-RAS International Conference on Humanoid
    Robots (HUMANOIDS), 2012</p>'';
    license = with lib.licenses; [ gpl3 ];
  };
}
