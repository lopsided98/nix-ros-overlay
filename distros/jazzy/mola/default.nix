
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-bridge-ros2, mola-demos, mola-input-rawlog, mola-input-rosbag2, mola-input-video, mola-kernel, mola-launcher, mola-metric-maps, mola-pose-list, mola-relocalization, mola-traj-tools, mola-viz, mola-yaml }:
buildRosPackage {
  pname = "ros-jazzy-mola";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "6eea22c425e1ac63acf18d233d40ac50efc87c945dcb843f7a1e875831dc9ed3";
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
