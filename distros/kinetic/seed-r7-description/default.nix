
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-description";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_description/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "65b6eb415181ce42b659c47fde9c6104ae86227bbee3d86bfaa26643a65b564c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
