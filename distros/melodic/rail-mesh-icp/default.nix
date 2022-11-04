
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rail-mesh-icp";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_mesh_icp-release/archive/release/melodic/rail_mesh_icp/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "eecb7c4d0910a7e240f7fa4da616ca4fc3306cea4e0bd2485f417dca3e5ba9a8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pcl-conversions pcl-ros roscpp sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enables matching a mesh model file (e.g. STL) to a point cloud using ROS.'';
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
