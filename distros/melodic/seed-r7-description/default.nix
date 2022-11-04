
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-description";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_description/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "1c67f02e68a82358e6aeb0f323bfae89e35322b0a92ce40f082ac9e0b37a9cb5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
