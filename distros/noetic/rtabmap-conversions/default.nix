
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen-conversions, geometry-msgs, image-geometry, laser-geometry, pcl-conversions, roscpp, rtabmap, rtabmap-msgs, sensor-msgs, std-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-conversions";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_conversions/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "ff8dc32f4f85aad823a6bc1bb13a0f43182c6ccba92adaaade64b851590b5589";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge eigen-conversions geometry-msgs image-geometry laser-geometry pcl-conversions roscpp rtabmap rtabmap-msgs sensor-msgs std-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's conversions package. This package can be used to convert rtabmap_msgs's msgs into RTAB-Map's library objects.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
