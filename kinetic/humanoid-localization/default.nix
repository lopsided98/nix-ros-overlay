
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, eigen, nav-msgs, sensor-msgs, octomap, cmake-modules, pcl-ros, message-filters, std-msgs, std-srvs, dynamic-edt-3d, catkin, roscpp, boost, octomap-msgs, pcl-conversions, visualization-msgs, octomap-ros }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-localization";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/humanoid_localization/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "802b223aa02c760a62d63c31de19f472da76857467906b5fa1ca9347f19e22dc";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros boost message-filters geometry-msgs sensor-msgs octomap std-msgs std-srvs dynamic-edt-3d tf octomap-msgs roscpp cmake-modules eigen pcl-conversions visualization-msgs octomap-ros nav-msgs ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs boost geometry-msgs message-filters octomap std-msgs std-srvs octomap-msgs tf dynamic-edt-3d cmake-modules eigen pcl-conversions octomap-ros roscpp visualization-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>6D localization for humanoid robots based on depth data (laser, point clouds).
    Two observation models are currently available based on OctoMap as 3D map:
    Ray casting and an end point model (lookup in the distance map).</p>
    <p>Details can be found in the publication <br/>
    <em>&quot;Humanoid Navigation with Dynamic Footstep Plans&quot;</em>
    by A. Hornung, K.M. Wurm, and M. Bennewitz; published in 
    IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), 2010</p>'';
    license = with lib.licenses; [ gpl3 ];
  };
}
