
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-description";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_description/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "50888ca325c19ad9113c10a0dff38b1e7b637d03b2ab15f32137d5b03b91e9e3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
