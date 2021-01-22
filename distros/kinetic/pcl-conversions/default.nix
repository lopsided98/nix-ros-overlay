
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pcl, pcl-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pcl-conversions";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pcl_conversions-release/archive/release/kinetic/pcl_conversions/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "6de59a407d381cc9ca253990dfd7cabebee721af1f40952a9d375abb6c943e5a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
