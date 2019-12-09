
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, liblapack, eigen-conversions, std-msgs, tf, cmake-modules, catkin, pcl-conversions, visualization-msgs, roscpp, message-runtime, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-handle-detector";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/atenpas/handle_detector-release/archive/release/kinetic/handle_detector/1.3.1-0.tar.gz";
    name = "1.3.1-0.tar.gz";
    sha256 = "33c01a3dac7e8a6d395963ecbbb23d9f0d0face2abadb8eb606f98bfcb0da341";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs liblapack eigen-conversions std-msgs tf cmake-modules pcl-conversions visualization-msgs roscpp message-generation tf-conversions ];
  propagatedBuildInputs = [ geometry-msgs liblapack eigen-conversions std-msgs tf cmake-modules pcl-conversions visualization-msgs roscpp message-runtime tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package to detect handles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
