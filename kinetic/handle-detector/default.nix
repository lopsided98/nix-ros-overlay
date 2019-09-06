
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, roscpp, liblapack, message-generation, message-runtime, visualization-msgs, tf-conversions, std-msgs, eigen-conversions, tf, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-handle-detector";
  version = "1.3.1";

  src = fetchurl {
    url = "https://github.com/atenpas/handle_detector-release/archive/release/kinetic/handle_detector/1.3.1-0.tar.gz";
    name = "1.3.1-0.tar.gz";
    sha256 = "33c01a3dac7e8a6d395963ecbbb23d9f0d0face2abadb8eb606f98bfcb0da341";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules roscpp liblapack message-generation tf-conversions visualization-msgs std-msgs eigen-conversions tf pcl-conversions geometry-msgs ];
  propagatedBuildInputs = [ cmake-modules tf liblapack message-runtime visualization-msgs tf-conversions std-msgs eigen-conversions roscpp pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package to detect handles.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
