
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-open3d-conversions";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_open3d-release/archive/release/noetic/open3d_conversions/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "67d58ef04e6ec6ee1788888cddaf5403bb9b0e3ca016e04748f7df966795ab34";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversion functions to and from Open3D datatypes'';
    license = with lib.licenses; [ asl20 ];
  };
}
