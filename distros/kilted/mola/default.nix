
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-bridge-ros2, mola-demos, mola-input-rawlog, mola-input-rosbag2, mola-input-video, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-relocalization, mola-traj-tools, mola-viz, mola-yaml }:
buildRosPackage {
  pname = "ros-kilted-mola";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "447709ecb58403eefe626d0af90bcfc622ee811588376e12e6c2f3d47fb3c2d4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-bridge-ros2 mola-demos mola-input-rawlog mola-input-rosbag2 mola-input-video mola-kernel mola-launcher mola-metric-maps mola-pose-list mola-relocalization mola-traj-tools mola-viz mola-yaml ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Metapackage with all core open-sourced MOLA packages.";
    license = with lib.licenses; [ bsd3 ];
  };
}
