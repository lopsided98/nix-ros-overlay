
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, octomap, pcl-ros, tf, pcl-conversions, geometry-msgs, boost, message-filters, dynamic-edt-3d, octomap-ros, std-srvs, catkin, octomap-msgs, nav-msgs, std-msgs, visualization-msgs, roscpp, cmake-modules, sensor-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-localization";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/humanoid_localization/0.4.2-0.tar.gz;
    sha256 = "802b223aa02c760a62d63c31de19f472da76857467906b5fa1ca9347f19e22dc";
  };

  buildInputs = [ std-srvs boost cmake-modules sensor-msgs message-filters dynamic-edt-3d octomap-msgs roscpp nav-msgs octomap-ros octomap visualization-msgs pcl-ros std-msgs tf pcl-conversions geometry-msgs eigen ];
  propagatedBuildInputs = [ std-srvs boost cmake-modules sensor-msgs message-filters dynamic-edt-3d octomap-msgs roscpp nav-msgs octomap-ros octomap visualization-msgs pcl-ros std-msgs tf pcl-conversions geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>6D localization for humanoid robots based on depth data (laser, point clouds).
    Two observation models are currently available based on OctoMap as 3D map:
    Ray casting and an end point model (lookup in the distance map).</p>
    <p>Details can be found in the publication <br/>
    <em>&quot;Humanoid Navigation with Dynamic Footstep Plans&quot;</em>
    by A. Hornung, K.M. Wurm, and M. Bennewitz; published in 
    IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), 2010</p>'';
    #license = lib.licenses.GPLv3;
  };
}
