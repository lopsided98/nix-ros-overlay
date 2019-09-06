
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, tf2-ros, message-generation, message-runtime, pcl-ros, std-msgs, roscpp, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rail-mesh-icp";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_mesh_icp-release/archive/release/melodic/rail_mesh_icp/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "c659160c425be579bfb2984f4c8f46b7798cae82f8ccbbc096f3c41066e5c7b4";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs tf2-ros message-generation pcl-ros std-msgs roscpp pcl-conversions geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs tf2-ros message-runtime pcl-ros std-msgs roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enables matching a mesh model file (e.g. STL) to a point cloud using ROS.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
