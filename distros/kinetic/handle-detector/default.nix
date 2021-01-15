
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen-conversions, geometry-msgs, liblapack, message-generation, message-runtime, pcl-conversions, roscpp, std-msgs, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-handle-detector";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/atenpas/handle_detector-release/archive/release/kinetic/handle_detector/1.3.1-0.tar.gz";
    name = "1.3.1-0.tar.gz";
    sha256 = "33c01a3dac7e8a6d395963ecbbb23d9f0d0face2abadb8eb606f98bfcb0da341";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ cmake-modules eigen-conversions geometry-msgs liblapack message-runtime pcl-conversions roscpp std-msgs tf tf-conversions visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package to detect handles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
